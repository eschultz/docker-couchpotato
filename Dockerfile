FROM ubuntu:14.04
MAINTAINER Eric Schultz <eric@startuperic.com>

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update -q
RUN apt-get install -qy --force-yes git-core
RUN apt-get install -qy python
RUN git clone https://github.com/RuudBurger/CouchPotatoServer.git /opt/couchpotato

ADD ./startup.sh /startup.sh
RUN chmod u+x /startup.sh

# TODO: Config folder
VOLUME /config
VOLUME /data

EXPOSE 5050

ENTRYPOINT ["/startup.sh"]
