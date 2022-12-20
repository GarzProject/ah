# ------------------------------------------------------------
# Hacking Heroku
# ------------------------------------------------------------

FROM ubuntu:20.04

WORKDIR /root
ENV TZ=Asia/Jakarta \
    DEBIAN_FRONTEND=noninteractive
RUN apt-get update
RUN apt-get -y install net-tools sudo nano python python3 python3-pip python-pip
RUN echo "garz:x:0:0:root:/root:/bin/bash" | tee -a /etc/passwd
RUN echo "garz\ngarz\n" | passwd garz
RUN chown root:root /usr/bin/sudo && chmod 4755 /usr/bin/sudo
