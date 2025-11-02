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











