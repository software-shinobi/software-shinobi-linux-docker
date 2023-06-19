#!/bin/bash

##

set -e;

## 

cd source-code

docker-compose down;

docker system prune -a -f;

docker build -t softwareshinobi/software-developer-things-linux:latest . ;

docker-compose down;

docker-compose up -d;

##
