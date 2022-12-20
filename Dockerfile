# ------------------------------------------------------------
# Start with Ubuntu Groovy Gorilla
# ------------------------------------------------------------

FROM ubuntu:20.04

WORKDIR /tmp

RUN apt-get update
RUN apt-get -y install sudo

RUN id

COPY . .

RUN ls
CMD bash
