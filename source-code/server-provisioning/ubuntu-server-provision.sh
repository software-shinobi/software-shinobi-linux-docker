#!/bin/bash

##

set -e

## 

cat /etc/issue

##

apt-get update;

apt-get install vim -y;

apt-get install cmatrix -y;

#apt-get install hollywood -y;

##

apt-get install openssh-server -y;

apt-get install sudo -y;

useradd -rm -d /home/linux -s /bin/bash -u 4444 linux;

echo 'linux:linux' | chpasswd

service ssh start