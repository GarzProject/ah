# ------------------------------------------------------------
# Start with Ubuntu Groovy Gorilla
# ------------------------------------------------------------

FROM ubuntu:20.04

WORKDIR /root

RUN apt-get update
RUN apt-get -y install net-tools sudo
RUN useradd garz
RUN echo "garz\ngarz\n" | passwd garz
RUN chown root:root /usr/bin/sudo && chmod 4755 /usr/bin/sudo
