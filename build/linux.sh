#! /bin/bash

sudo apt update && sudo apt install build-essential cmake libuv1-dev libssl-dev -y

git clone https://github.com/savenas/xmrig
cd xmrig/build/

cmake .. -DWITH_AEON=OFF -DWITH_HTTPD=OFF
make


# Enabling Huge Page support +30% increase 
# REF: https://medium.com/@tomas_savenas/30-increase-in-cpu-mining-hash-rate-by-enabling-huge-pages-8af5eedb7d62

core=`nproc --all`
sudo sysctl -w vm.nr_hugepages=$core
sudo bash -c "echo vm.nr_hugepages=$core >> /etc/sysctl.conf"

# RUN run RUN
./xmrig
