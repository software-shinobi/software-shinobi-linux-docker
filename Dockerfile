FROM ubuntu:noble

##

MAINTAINER Software Shinobi "the.software.shinobi@gmail.com"

##WORKDIR /provision

##

RUN ls -l

COPY provision .

RUN ls -l

##

ARG DEBIAN_FRONTEND=noninteractive

##

RUN bash /provision.bash

##

EXPOSE 22

CMD ["/usr/sbin/sshd","-D"]

