#!/bin/bash
#

NODES="192.168.122.214:8001,192.168.122.200:8002,192.168.122.236:8003,192.168.122.114:8004,192.168.122.68:8005"


# Single PUT to node 1
python3 ./kvclient.py --nodes $NODES --node 1  "PUT color black"
python3 ./kvclient.py --nodes $NODES --node 2  "PUT color magenta"
python3 ./kvclient.py --nodes $NODES --node 2  "PUT warna kuning"
python3 ./kvclient.py --nodes $NODES --node 2  "PUT warna kuning"
python3 ./kvclient.py --nodes $NODES race "PUT color blue" "PUT color green"
python3 ./kvclient.py --nodes $NODES race "PUT warna oranye" "PUT warna hijau"


echo "-------HASIL----"
python3 ./kvclient.py --nodes $NODES getall color
echo "-------HASIL----"
python3 ./kvclient.py --nodes $NODES getall warna




