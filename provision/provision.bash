#!/bin/bash

##
## This script installs stuff 
##     to set up a linux server
##     suitable for newbies.
##
## This linux server will be hosted under
##     linux.softwareshinobi.digital
##
## Before you go, check read around my blog!
##
##     https://www.softwareshinobi.digital
##

##

set -e;

set -x;

## 

cat /etc/issue;

echo "Shinobi OS 22.04" > /etc/issue;

cat /etc/issue;

##

apt-get update;
apt-get install docker-compose -y;
##

apt-get install -y vim;

apt-get install -y cmatrix;

##

apt-get install -y openssh-server;

apt-get install -y sudo;

##

service ssh start;

##

userName="softwareshinobi";

userID="4444";

##

mkdir /home/users;

useradd -rm -d /home/users/$userName -s /bin/bash -u $userID $userName;

chown root:root /home/users/$userName -R

usermod -a -G sudo softwareshinobi

##echo '$userName:$userName' | chpasswd

## make this work later. moving on. // echo '`$userName`:`$userName`' | chpasswd

echo 'softwareshinobi:softwareshinobi' | chpasswd

##

echo "fin."
