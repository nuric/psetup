FROM ubuntu:latest

COPY setups/ /setups/
ENV DEBIAN_FRONTEND=noninteractive
RUN chmod +x /setups/ubuntu_setup.sh && /setups/ubuntu_setup.sh

VOLUME /home/nuric

EXPOSE 22
CMD ["/usr/sbin/sshd", "-D"]
