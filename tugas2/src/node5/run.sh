#!/bin/bash

PEERS="192.168.122.214:8001=1,192.168.122.200:8002=2,192.168.122.236:8003=3,192.168.122.114:8004=4"
LOGGER="192.168.122.143:9000"

python3 ./kv.py --id 5 --tcp 8005 --udp 8105 \
  --peers $PEERS \
  --logger-addr $LOGGER \
  --numnodes 5 \
  --use-mutex 1