#!/bin/bash

PEERS="192.168.122.200:8002=2,192.168.122.236:8003=3,192.168.122.114:8004=4,192.168.122.68:8005=5"
LOGGER="192.168.122.143:9000"

python3 ./kv.py --id 1 --tcp 8001 --udp 8101 \
  --peers $PEERS \
  --logger-addr $LOGGER \
  --numnodes 5 \
  --use-mutex 1