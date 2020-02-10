FROM ubuntu:latest

LABEL author=admirmemic

RUN apt-get -y update \
 && apt-get install -y wget \
 && apt-get install -y openjdk-8-jre-headless


WORKDIR /opt/webp
RUN wget https://storage.googleapis.com/downloads.webmproject.org/releases/webp/libwebp-1.0.3-linux-x86-64.tar.gz \
 && tar xfvz libwebp-1.0.3-linux-x86-64.tar.gz
RUN mv libwebp-1.0.3-linux-x86-64/* .
RUN rm libwebp-1.0.3-linux-x86-64.tar.gz
RUN rm -r libwebp-1.0.3-linux-x86-64

ENV PATH $PATH:/opt/webp/bin
