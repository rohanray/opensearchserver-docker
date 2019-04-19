FROM debian:stretch

ENV DEBIAN_FRONTEND noninteractive

RUN echo "deb http://ftp.debian.org/debian stretch-backports main" | tee /etc/apt/sources.list.d/backports.list
RUN apt-get update -y
RUN cat /etc/apt/sources.list
RUN apt-get -t stretch-backports install -y openjdk-8-jdk
