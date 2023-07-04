#!/bin/bash

##

set -e;

set -x;

##

cd ../source-code

docker build -t softwareshinobi/software-shinobi-linux:latest .

##
