#!/bin/sh
export PATH=$PATH:/app/

echo "[xaria] Running Setup...."
./setup.sh &
pid=$!
wait $pid

echo "[xaria] Starting rpc...."
./aria2c --conf-path=/app/aria2.conf &
echo "[xaria] Starting Server...."
nginx
echo "[xaria] Servers are active...."