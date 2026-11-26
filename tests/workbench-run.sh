#!/usr/bin/env bash
# Runs INSIDE an OpenShift AI workbench pod: executes workbench.ipynb top to bottom (minus its
# pip cell, the client is installed beforehand) and prints each cell's output.
# Driven by tests/workbench-test.sh. Usage: workbench-run.sh <label>
cd /opt/app-root/src
python - "$1" <<'PY'
import json,sys
nb=json.load(open("workbench.ipynb"))
nb["cells"]=[c for c in nb["cells"] if not (c["cell_type"]=="code" and "pip install" in "".join(c["source"]))]
json.dump(nb,open(f"wb-{sys.argv[1]}.ipynb","w"))
PY
python -c "import pyspark,pandas; print('client pyspark',pyspark.__version__,'pandas',pandas.__version__)" 2>/dev/null
timeout 500 jupyter nbconvert --to notebook --execute --allow-errors --ExecutePreprocessor.timeout=300 --output wb-$1-out.ipynb wb-$1.ipynb >/dev/null 2>&1; echo "nbconvert exit $?"
python - "$1" <<'PY'
import json,sys,re
nb=json.load(open(f"wb-{sys.argv[1]}-out.ipynb")); bad=0
for i,c in enumerate(nb["cells"]):
    if c["cell_type"]!="code": continue
    out=""
    for o in c.get("outputs",[]):
        if o["output_type"]=="stream" and o["name"]=="stdout": out+="".join(o["text"])
        elif o["output_type"] in("execute_result","display_data"): out+="".join(o["data"].get("text/plain",""))
        elif o["output_type"]=="error": bad+=1; out+="ERROR "+o["ename"]+": "+re.sub(r"\x1b\[[0-9;]*m","",o["evalue"])[:500]
    print(f"--- cell {i}: {''.join(c['source']).splitlines()[0][:70]}\n{out[:600]}")
print("NOTEBOOK_OK" if not bad else f"NOTEBOOK_ERRORS={bad}")
PY
