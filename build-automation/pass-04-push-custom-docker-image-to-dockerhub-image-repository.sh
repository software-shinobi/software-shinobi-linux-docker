#!/bin/bash

##

set -e;

set -x;

##

docker tag software-developer-things-linux softwareshinobi/software-developer-things-linux:latest

##

docker push softwareshinobi/software-developer-things-linux

docker push softwareshinobi/software-developer-things-linux:latest