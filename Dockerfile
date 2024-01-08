
FROM ubuntu:24.04

##

COPY provision/provision.bash /provision.bash

##RUN chmod +x /ubuntu-server-provision.sh

RUN bash /provision.bash

EXPOSE 22

CMD ["/usr/sbin/sshd","-D"]
