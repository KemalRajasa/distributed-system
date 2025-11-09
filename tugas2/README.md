# TUGAS 2 - DISTRIBUTED SYSTEM MUTUAL EXCLUTION

# Kemal Tangguh Aji Rajasa - 5025231263

## DOCS LAPORAN BISA DIAKSES [DISINI](https://docs.google.com/document/d/1_ZNYA8N7BV_7pC0qq88wCRWg8LckhLVHbqyoWEK0tOM/edit?usp=sharing)

## TABEL KONTEN

- [ARSITEKTUR PERCOBAAN](#arsitektur-percobaan)
  - [SPESIFIKASI](#spesifikasi)
  - [TOPOLOGI](#topologi)
  - [NODES IP LIST](#nodes-ip-list)

- [CONFIGURATION](#configuration)
  - [NODES NETWORK CONFIG](#nodes-network-config)
  - [INSTALLATION AND SETUP](#installation-and-setup)
  - [NODE CONFIG](#node-config)




## ARSITEKTUR PERCOBAAN

### SPESIFIKASI

  #### HARDWARE
  
  | PART | DETAIL |
  | :--- | :---: |
  | CPU | Intel i5 - 12450H |
  | GPU | Nvidia RTX 2050 |
  | RAM | 16 GB DDR4 |
  | OS | Windows 11 HOME |
  
  #### VIRTUAL MACHINE
  
  | INFO | DETAIL |
  | :--- | :---: |
  | Software Virtualisasi | Virtual Box |
  | Alokasi RAM | 8 GB |
  | Alokasi Core | 8 Core |
  | Node Image | royyana/netics-pc:debi-latest |

### TOPOLOGI

Di pusatnya adalah Switch1, yang bertindak sebagai titik koneksi utama. lima node bernama node1 hingga node 5 dan juga satu node logger terhubung ke switch 1. Switch1 kemudian terhubung ke NAT1 (Network Address Translation), yang menyediakan konektivitas jaringan eksternal internet untuk semua node di jaringan internal tersebut.

<img width="1891" height="944" alt="image" src="https://github.com/user-attachments/assets/5a3df6c5-b665-4e57-8f78-3c1cf16e4278" />


### NODES IP LIST

  Dengan menggunakan perintah `hostname -I` di tiap node akan di dapatkan ip masing-masing node untuk nantinya dipakai sebagai argument menjalankan peer_node.py
  
  <img width="1919" height="1003" alt="image" src="https://github.com/user-attachments/assets/42bf3b50-3be8-4d2e-b821-9f54977b9b7d" />

  TABEL IP

  | NODE | NODE IP | VNC CONNECTION | IP:PORT KOMUNIKASI |
  | :--- | :---: | :---: | :---: |
  | 1 | 192.168.122.214 | telnet://192.168.18.45:5001 | 192.168.122.39:8001 |
  | 2 | 192.168.122.200 | telnet://192.168.18.45:5003 | 192.168.122.189:8002 |
  | 3 | 192.168.122.236 | telnet://192.168.18.45:5005 | 192.168.122.7:8003 |
  | 4 | 192.168.122.114 | telnet://192.168.18.45:5007 | 192.168.122.159:8004 |
  | 5 | 192.168.122.68 | telnet://192.168.18.45:5009 | 192.168.122.159:8005 |
  | logger | 192.168.122.143 | telnet://192.168.18.45:5012 | 192.168.122.159:9000 |

## CONFIGURATION

### NODES NETWORK CONFIG

  ```
  auto eth0
  iface eth0 inet dhcp
  ```

### INSTALLATION AND SETUP

  #### NODE 1
  
  ```
  cd root
  git clone https://github.com/KemalRajasa/distributed-system/
  cd distributed-system/tugas2/src/node1
  ls
  ```
  
  #### NODE 2
  
  ```
  cd root
  git clone https://github.com/KemalRajasa/distributed-system/
  cd distributed-system/tugas2/src/node2
  ls
  ```
  
  #### NODE 3
  
  ```
  cd root
  git clone https://github.com/KemalRajasa/distributed-system/
  cd distributed-system/tugas2/src/node3
  ls
  ```
  
  #### NODE 4
  
  ```
  cd root
  git clone https://github.com/KemalRajasa/distributed-system/
  cd distributed-system/tugas2/src/node4
  ls
  ```
  #### NODE 5
  
  ```
  cd root
  git clone https://github.com/KemalRajasa/distributed-system/
  cd distributed-system/tugas2/src/node5
  ls
  ```

  #### NODE LOGGER
  
  ```
  cd root
  git clone https://github.com/KemalRajasa/distributed-system/
  cd distributed-system/tugas2/src/logger
  ls
  ```

### NODE CONFIG

  Konfigurasi pada file `run.sh` masing masing node untuk memudahkan eksekusi file kv.py atau logger.py, pastikan file kv.py atau logger.py berada di direktori yang sama dengan run.sh

  #### NODE 1
  
  ```
  #!/bin/bash

  python3 ./kv.py --id 1 --tcp 8001 --udp 8101 --peers 192.168.122.200:8002=2,192.168.122.236:8003=3,192.168.122.114:8004=4,192.168.122.68:8005=5 --logger-addr 192.168.122.143:9000 --numnodes 5 --use-mutex 1


  ```
  
  #### NODE 2
  
  ```
  #!/bin/bash

  python3 ./kv.py --id 2 --tcp 8002 --udp 8102 --peers 192.168.122.214:8001=1,192.168.122.236:8003=3,192.168.122.114:8004=4,192.168.122.68:8005=5 --logger-addr 192.168.122.143:9000 --numnodes 5 --use-mutex 1

  ```
  
  #### NODE 3
  
  ```
    #!/bin/bash

    python3 ./kv.py --id 3 --tcp 8003 --udp 8103 --peers 192.168.122.214:8001=1,192.168.122.200:8002=2,192.168.122.114:8004=4,192.168.122.68:8005=5 --logger-addr 192.168.122.143:9000 --numnodes 5 --use-mutex 1
  ```
  
  #### NODE 4
  
    #!/bin/bash

    python3 ./kv.py --id 4 --tcp 8004 --udp 8104 --peers 192.168.122.214:8001=1,192.168.122.200:8002=2,192.168.122.236:8003=3,192.168.122.68:8005=5 --logger-addr 192.168.122.143:9000 --numnodes 5 --use-mutex 1
  ```
  
  #### NODE 5
  
  ```
    #!/bin/bash

    python3 ./kv.py --id 5 --tcp 8005 --udp 8105 --peers 192.168.122.214:8001=1,192.168.122.200:8002=2,192.168.122.236:8003=3,192.168.122.114:8004=4 --logger-addr 192.168.122.143:9000 --numnodes 5 --use-mutex 1
  ```

  #### NODE LOGGER
  
  ```
    #!/bin/bash

    python3 ./kv.py  --logger --logger-tcp 9000 --numnodes 5
  ```








