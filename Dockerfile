FROM ubuntu:16.04

RUN dpkg --add-architecture i386

RUN apt-get update
RUN apt-get -y install software-properties-common

RUN add-apt-repository -y ppa:ubuntu-wine/ppa && apt-get update && apt-get -y install wine1.8 nodejs xvfb

ADD . /app

EXPOSE 9101
EXPOSE 5010

WORKDIR /app

CMD ["/app/run-iqfeed"]
