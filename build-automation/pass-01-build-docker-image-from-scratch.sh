#!/bin/bash

##

set -e;

set -x;

##

cd ../source-code

##

docker-compose down;

docker build -t softwareshinobi/software-developer-things-linux:latest .;

docker-compose down --remove-orphans;

##

docker-compose up -d;

##
