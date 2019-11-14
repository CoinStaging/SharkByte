FROM debian:stretch
LABEL maintainer="sharkbyte Developers <dev@sharkbyte.org>"
LABEL description="Dockerised sharkbyteCore, built from Travis"

RUN apt-get update && apt-get -y upgrade && apt-get clean && rm -fr /var/cache/apt/*

COPY bin/* /usr/bin/
