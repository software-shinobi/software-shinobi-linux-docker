#!/bin/bash

##
## This script installs stuff 
##     to set up a linux server
##     suitable for newbies.
##
## This linux server will be hosted under
##     linux.softwaredeveloperthings.com
##
## Before you go, check read around my blog!
##
##     https://www.softwaredeveloperthings.com
##

##

set -e;

set -x;

## 

cat /etc/issue;

echo "Software Developer Things Linux v4.4.44 !LTS" > /etc/issue;

cat /etc/issue;

##

apt-get update;

##

apt-get install -y vim;

apt-get install -y cmatrix;

##

apt-get install -y openssh-server;

apt-get install -y sudo;

##

service ssh start;

##

userName="software-developer";

userID="4444";

##

mkdir /home/users;

useradd -rm -d /home/users/$userName -s /bin/bash -u $userID $userName;

chown root:root /home/users/$userName -R

##echo '$userName:$userName' | chpasswd

## make this work later. moving on. // echo '`$userName`:`$userName`' | chpasswd

echo 'software-developer:software-developer' | chpasswd

##

echo "fin."
