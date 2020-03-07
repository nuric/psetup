FROM ubuntu:latest

COPY setups/ /setups/
RUN /setups/ubuntu_setup.sh

VOLUME /home/nuric

EXPOSE 22
CMD ["/usr/sbin/sshd", "-D"]
