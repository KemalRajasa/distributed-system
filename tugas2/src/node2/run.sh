#!/bin/bash

PEERS="192.168.122.214:8001=1,192.168.122.236:8003=3"
LOGGER="192.168.122.143:9000"

python3 ./kv.py --id 2 --tcp 8002 --udp 8102 \
  --peers $PEERS \
  --logger-addr $LOGGER \
  --numnodes 3 \
  --use-mutex 1