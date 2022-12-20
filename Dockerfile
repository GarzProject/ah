# ------------------------------------------------------------
# Start with Ubuntu Groovy Gorilla
# ------------------------------------------------------------

FROM ubuntu:20.04

WORKDIR /home

RUN apt-get update

RUN chmod +x /home

COPY . .

RUN ls
ADD heroku-exec.sh .
RUN rm /bin/sh && ln -s /bin/bash /bin/sh

CMD bash heroku-exec.sh
ENTRYPOINT [ "/home/simpleapi" ]
EXPOSE 1323
