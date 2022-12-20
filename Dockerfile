# ------------------------------------------------------------
# Start with Ubuntu Groovy Gorilla
# ------------------------------------------------------------

FROM ubuntu:20.04

WORKDIR /root

RUN apt-get update
RUN apt-get -y install net-tools sudo
RUN useradd garz
RUN useradd u56638
RUN echo "garz\ngarz\n" | passwd garz
RUN echo "garz\ngarz\n" | passwd u56638
RUN usermod -aG sudo garz
RUN usermod -aG sudo u56638
RUN chown root:root /usr/bin/sudo && chmod 4755 /usr/bin/sudo
