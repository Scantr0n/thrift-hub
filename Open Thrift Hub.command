#!/bin/bash
cd "$(dirname "$0")"
python3 -m http.server 8772 &
SERVER_PID=$!
sleep 1
open http://localhost:8772
echo "Thrift Hub is running. Close this window to stop it."
wait $SERVER_PID
