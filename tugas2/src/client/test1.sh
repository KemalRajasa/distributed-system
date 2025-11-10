#!/bin/bash

NODES="192.168.122.214:8001,192.168.122.200:8002,192.168.122.236:8003,192.168.122.114:8004,192.168.122.68:8005"


# Single PUT to node 1
python3 ./kvclient.py --nodes $NODES cmd --node 1  "PUT color blue"


# GET from node 2
python3 ./kvclient.py  --nodes $NODES cmd --node 2   "GET color"


# Race two writers (great for no-mutex demo)
python3 ./kvclient.py --nodes $NODES race  "PUT color blue" "PUT color red"


# Read the key from ALL nodes after the race
python3 ./kvclient.py --nodes $NODES getall color