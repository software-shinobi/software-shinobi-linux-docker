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

## setting server hostname

cat /etc/issue;

echo "Shinobi OS 22 Sian" > /etc/issue;

cat /etc/issue;

## updating APT software packages

apt update;

##

apt install -y ca-certificates curl;

## Installing Docker + Compose (Not Docker Compose)


### APT package dependency setup

install -m 0755 -d /etc/apt/keyrings

curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc

chmod a+r /etc/apt/keyrings/docker.asc

echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
  tee /etc/apt/sources.list.d/docker.list > /dev/null

### Docker Engine situation install

apt install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

docker run hello-world

## Install more software

apt install -y vim zip wget net-tools;

## install and start a local ssh server

apt install -y openssh-server;

service ssh start;

## setting up users and groups

bash users.bash

##

echo "fin."
