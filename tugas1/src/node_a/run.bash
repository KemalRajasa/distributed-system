#!/bin/bash
python3 peer_node.py \
--name A --listen 0.0.0.0 5000 \
--peers A@192.168.122.168:5000 B@192.168.122.218:5001 D@192.168.122.153:5002 \
--logger 192.168.122.193 9999 \
--initiate-broadcast --msg "Hello from A"
