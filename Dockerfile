FROM ubuntu:12.04
MAINTAINER Radu Ciorba radu.ciorba@3pillarglobal.com

RUN echo "deb http://archive.ubuntu.com/ubuntu precise universe" >> /etc/apt/sources.list
RUN apt-get update
ADD elasticsearch-0.90.6.deb elasticsearch-0.90.6.deb
RUN apt-get install openjdk-7-jre -y
RUN dpkg -i elasticsearch-0.90.6.deb