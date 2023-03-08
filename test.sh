#!/usr/bin/env bash

PORT=3000 bun  index.cjs &
PORT=3001 node index.cjs &

sleep 0.5

diff \
    <(curl localhost:3000/path?a=b 2>/dev/null; echo "") \
    <(curl localhost:3001/path?a=b 2>/dev/null; echo "")

kill -- -$$
