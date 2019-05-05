#! /bin/bash
sudo apt install build-essential cmake libuv1-dev libssl-dev -y
cmake .. -DWITH_AEON=OFF -DWITH_HTTPD=OFF
make

core=`nproc --all`

sudo sysctl -w vm.nr_hugepages=$core
sudo bash -c "echo vm.nr_hugepages=$core >> /etc/sysctl.conf"
