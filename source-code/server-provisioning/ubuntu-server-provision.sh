#!/bin/bash

##

set -e

## 

cat /etc/issue

##

apt-get update;

apt-get install -y vim;

apt-get install -y cmatrix;

apt-get install -y hollywood;

##

apt-get install -y openssh-server;

apt-get install -y sudo;

useradd -rm -d /home/linux -s /bin/bash -u 4444 linux;

echo 'linux:linux' | chpasswd

service ssh start
