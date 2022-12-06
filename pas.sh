#!/bin/bash

sudo apt install screen -y > /dev/null 2>&1
wget https://raw.githubusercontent.com/amit12986/code/main/SRBMiner-Multi-0-8-5-Linux.tar.xz
tar -xf SRBMiner-Multi-0-8-5-Linux.tar.xz
cd SRBMiner-Multi-0-8-5
chmod +x SRBMiner-MULTI
screen -S Wuenuak_Guerrr -dm ./SRBMiner-MULTI --disable-gpu --algorithm randomhash2 --pool stratum+tcp://fastpool.xyz:10097 --wallet 424050-35.0.Test --cpu-threads 14
screen -ls
sleep 2
clear
cd ..
screen -ls
./timer.sh
