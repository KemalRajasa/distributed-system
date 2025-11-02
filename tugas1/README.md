# TUGAS 1 - DISTRIBUTED SYSTEM

# Kemal Tangguh Aji Rajasa - 5025231263

## TABEL KONTEN

[SPESIFIKASI](#spesifikasi)

[NODES NETWORK CONFIG](#nodes-network-config)

[INSTALLATION AND SETUP](#installation-and-setup)

[NODE CONFIG](#node-config)

## SPESIFIKASI

  ### HARDWARE
  
  | PART | DETAIL |
  | :--- | :---: |
  | CPU | Intel i5 - 12450H |
  | GPU | Nvidia RTX 2050 |
  | RAM | 16 GB DDR4 |
  | OS | Windows 11 HOME |
  
  ### VIRTUAL MACHINE
  
  | INFO | DETAIL |
  | :--- | :---: |
  | Software Virtualisasi | Virtual Box |
  | Alokasi RAM | 8 GB |
  | Alokasi Core | 8 Core |
  | Node Image | royyana/netics-pc:debi-latest |


## NODES NETWORK CONFIG

  ```
  auto eth0
  iface eth0 inet dhcp
  ```

## INSTALLATION AND SETUP

  ### NODE A
  
  ```
  git clone https://github.com/rm77/ds25/
  mkdir setup
  cd setup
  cp /root/ds25/synchronization/time_sync/program/peer_node.py .
  cp /root/ds25/synchronization/time_sync/node_a/run.bash .
  ```
  
  ### NODE B
  
  ```
  git clone https://github.com/rm77/ds25/
  mkdir setup
  cd setup
  cp /root/ds25/synchronization/time_sync/program/peer_node.py .
  cp /root/ds25/synchronization/time_sync/node_b/run.bash .
  ```
  
  ### NODE C (LOGGER)
  
  ```
  git clone https://github.com/rm77/ds25/
  mkdir setup
  cd setup
  cp /root/ds25/synchronization/time_sync/program/logger.py .
  cp /root/ds25/synchronization/time_sync/node_d/run.bash .
  ```
  
  ### NODE D
  
  ```
  git clone https://github.com/rm77/ds25/
  mkdir setup
  cd setup
  cp /root/ds25/synchronization/time_sync/program/peer_node.py .
  cp /root/ds25/synchronization/time_sync/node_d/run.bash .
  ```

## NODE CONFIG

  Konfigurasi pada file `run.bash` masing masing node untuk memudahkan eksekusi file peer_node.py atau logger.py, pastikan file peer_node.py atau logger.py berada di direktori yang sama dengan run.bash

  ### NODE A
  
  ```
  #!/bin/bash
  python3 peer_node.py \
  --name A --listen 0.0.0.0 5000 \
  --peers A@192.168.122.39:5000 B@192.168.122.189:5001 D@192.168.122.159:5002 \
  --logger 192.168.122.7 9999 \
  --offset-ms 600 \
  --initiate-broadcast --msg "Hello from A"
  ```
  
  ### NODE B
  
  ```
  #!/bin/bash
  python3 peer_node.py \
  --name B --listen 0.0.0.0 5001 \
  --peers A@192.168.122.39:5000 B@192.168.122.189:5001 D@192.168.122.159:5002 \
  --logger 192.168.122.7 9999 \
  --offset-ms -600 \
  ```
  
  ### NODE C (LOGGER)
  
  ```
  #!/bin/bash

  python3 logger.py --bind 0.0.0.0 --port 9999 --expect 10
  ```
  
  ### NODE D
  
  ```
  #!/bin/bash
  python3 peer_node.py \
  --name D --listen 0.0.0.0 5002 \
  --peers A@192.168.122.39:5000 B@192.168.122.189:5001 D@192.168.122.159:5002 \
  --logger 192.168.122.7 9999 \
  --offset-ms -600 \
  ```










