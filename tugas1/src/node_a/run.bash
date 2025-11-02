#!/bin/bash
python3 peer_node.py \
--name A --listen 0.0.0.0 5000 \
--peers A@192.168.122.39:5000 B@192.168.122.189:5001 D@192.168.122.159:5002 \
--logger 192.168.122.7 9999 \
--offset-ms 600 \
--initiate-broadcast --msg "Hello from A"
