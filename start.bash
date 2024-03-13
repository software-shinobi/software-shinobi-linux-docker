#!/bin/bash

##

reset;

clear;

##

set -e;

set -x;

##

docker-compose pull

docker-compose up --build -d
