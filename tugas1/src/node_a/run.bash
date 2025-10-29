#!/bin/bash

python3 peer_node.py \
	  --name A --listen 0.0.0.0 5000 \
	  --peers A@localhost:5000 B@localhost:5001 D@localhost:5002 \
	  --logger localhost 9999 \
	  --offset-ms 600 \
	  --initiate-broadcast --msg "Hello from A"
