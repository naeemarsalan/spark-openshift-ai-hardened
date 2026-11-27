"""TEST ONLY: a minimal forward proxy (HTTP CONNECT tunnels only), used to check proxy settings.

Usage: connect-proxy.py <port> [<port> ...]
Prints one line per tunnel: "CONNECT <listening port> <target host>:<target port>".
"""
import select
import socket
import socketserver
import sys
import threading


class Handler(socketserver.StreamRequestHandler):
    def handle(self):
        line = self.rfile.readline().decode("latin-1").split()
        while self.rfile.readline() not in (b"\r\n", b"\n", b""):
            pass
        if len(line) < 2 or line[0] != "CONNECT":
            self.wfile.write(b"HTTP/1.1 405 Method Not Allowed\r\n\r\n")
            return
        host, _, port = line[1].rpartition(":")
        print(f"CONNECT {self.server.server_address[1]} {host}:{port}", flush=True)
        try:
            up = socket.create_connection((host.strip("[]"), int(port)), timeout=15)
        except OSError:
            self.wfile.write(b"HTTP/1.1 502 Bad Gateway\r\n\r\n")
            return
        self.wfile.write(b"HTTP/1.1 200 Connection established\r\n\r\n")
        socks = [self.connection, up]
        try:
            while True:
                ready, _, _ = select.select(socks, [], [], 300)
                if not ready:
                    break
                for s in ready:
                    data = s.recv(65536)
                    if not data:
                        return
                    (up if s is self.connection else self.connection).sendall(data)
        except OSError:
            pass
        finally:
            up.close()


class Server(socketserver.ThreadingTCPServer):
    allow_reuse_address = True
    daemon_threads = True


servers = [Server(("0.0.0.0", int(p)), Handler) for p in sys.argv[1:]]
for s in servers[1:]:
    threading.Thread(target=s.serve_forever, daemon=True).start()
print("proxy listening on", " ".join(sys.argv[1:]), flush=True)
servers[0].serve_forever()
