include versions.env

# FLAVOR=hi   -> Containerfile       (Red Hat Hardened Images base, default)
# FLAVOR=ubi9 -> Containerfile.ubi9  (UBI 9 minimal base)
FLAVOR      ?= hi
IMAGE       ?= $(REGISTRY)/$(IMAGE_NAME)-$(FLAVOR):$(IMAGE_TAG)
ENGINE      ?= podman
NAMESPACE   ?= spark-demo
# Extra arguments for the image build, e.g. a mounted .repo file or CA (docs/enterprise.md).
BUILD_ARGS  ?=
ifeq ($(FLAVOR),ubi9)
CONTAINERFILE := Containerfile.ubi9
BASE_ARGS     := --build-arg BASE_IMAGE=$(UBI9_BASE_IMAGE)
# Use only the public UBI repositories, even on a build host whose RHEL entitlement is passed
# into build containers. Override to point at Satellite or an internal mirror.
DNF_REPO_ARGS ?= --disablerepo=* --enablerepo=ubi-9-baseos-rpms --enablerepo=ubi-9-appstream-rpms
else
CONTAINERFILE := Containerfile
BASE_ARGS     := --build-arg BUILDER_IMAGE=$(HI_BUILDER_IMAGE)
DNF_REPO_ARGS ?=
endif

.PHONY: help fetch fetch-update build verify scan test all push clean compare

help: ## Show targets
	@grep -hE '^[a-z-]+:.*##' Makefile | awk -F ':.*## ' '{printf "  %-14s %s\n", $$1, $$2}'

fetch: ## Download + verify artifacts against artifacts.sha256 (only step that uses the internet)
	hack/fetch-artifacts.sh

fetch-update: ## Re-resolve artifacts and rewrite artifacts.sha256 (after a version bump)
	hack/fetch-artifacts.sh --update-lock

build: ## Build the image from vendored artifacts
	$(ENGINE) build --pull=newer -f $(CONTAINERFILE) -t $(IMAGE) $(BASE_ARGS) $(BUILD_ARGS) \
	  --build-arg SPARK_VERSION=$(SPARK_VERSION) \
	  --build-arg HADOOP_PROFILE=$(HADOOP_PROFILE) \
	  --build-arg JAVA_MAJOR=$(JAVA_MAJOR) \
	  --build-arg PYTHON_VERSION=$(PYTHON_VERSION) \
	  --build-arg IMAGE_VERSION=$(IMAGE_TAG) \
	  --build-arg DNF_REPO_ARGS="$(DNF_REPO_ARGS)" .

verify: ## Static hardening checks (non-root, no secrets, no setuid, permissions)
	hack/verify-image.sh $(IMAGE)

scan: ## Vulnerability + secret + misconfig scan (Trivy and Grype), reports in ./reports
	hack/scan.sh $(IMAGE)

test: ## Functional smoke tests under restricted-v2-like constraints (podman)
	tests/smoke-local.sh $(IMAGE)
	tests/operator-compat.sh $(IMAGE)

all: fetch build verify test scan ## Everything

push: ## Push to $(REGISTRY)
	$(ENGINE) push $(IMAGE)

BASELINE_IMAGE ?= localhost/spark-regular-ubi9:$(SPARK_VERSION)
compare: ## Build the regular-UBI baseline, then check and scan it next to $(IMAGE) (docs/scan-comparison.md)
	$(ENGINE) build -f baseline/Containerfile.regular-ubi9 --build-arg SPARK_VERSION=$(SPARK_VERSION) \
	  --build-arg DNF_REPO_ARGS="--disablerepo=* --enablerepo=ubi-9-baseos-rpms --enablerepo=ubi-9-appstream-rpms" \
	  -t $(BASELINE_IMAGE) baseline
	-hack/verify-image.sh $(BASELINE_IMAGE)
	hack/verify-image.sh $(IMAGE)
	hack/scan.sh $(BASELINE_IMAGE)
	hack/scan.sh $(IMAGE)

clean:
	rm -rf reports
