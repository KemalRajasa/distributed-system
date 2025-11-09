#!/bin/bash

PEERS="192.168.122.214:8001=1,192.168.122.200:8002=2"
LOGGER="192.168.122.143:9000"

python3 ./kv.py --id 3 --tcp 8003 --udp 8103 \
  --peers $PEERS \
  --logger-addr $LOGGER \
  --numnodes 3 \
  --use-mutex 1