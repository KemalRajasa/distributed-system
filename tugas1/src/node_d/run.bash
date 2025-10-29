#!/bin/bash

python3 peer_node.py \
	  --name D --listen 0.0.0.0 5002 \
	  --peers A@localhost:5000 B@localhost:5001 D@localhost:5002 \
	  --logger localhost 9999 \
	  --offset-ms -600
