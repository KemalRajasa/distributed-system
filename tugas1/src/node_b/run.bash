python3 peer_node.py \
	  --name B --listen 0.0.0.0 5001 \
	  --peers A@localhost:5000 B@localhost:5001 D@localhost:5002 \
	  --logger localhost 9999 \
	  --offset-ms -600 
