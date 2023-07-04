#!/bin/bash

##

set -e;

set -x;

##

cd ../source-code

##

docker-compose down --remove-orphans;

##

docker-compose up -d;