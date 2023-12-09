
FROM ubuntu:14.04

##

COPY server-provisioning/ubuntu-server-provision.sh /ubuntu-server-provision.sh

RUN chmod +x /ubuntu-server-provision.sh

RUN /ubuntu-server-provision.sh

EXPOSE 22

CMD ["/usr/sbin/sshd","-D"]
