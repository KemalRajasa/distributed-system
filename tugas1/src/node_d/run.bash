#!/bin/bash
python3 peer_node.py \
--name D --listen 0.0.0.0 5002 \
--peers A@192.168.122.39:5000 B@192.168.122.189:5001 D@192.168.122.159:5002 \
--logger 192.168.122.7 9999 \
--offset-ms -600 \
