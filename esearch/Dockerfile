FROM debian:7.4
MAINTAINER Radu Ciorba raduciorba@gmail.com
RUN apt-get -qq update
RUN DEBIAN_FRONTEND=noninteractive apt-get install openjdk-7-jre -y
ADD elasticsearch-1.1.1.deb elasticsearch-1.1.1.deb
RUN dpkg -i elasticsearch-1.1.1.deb
EXPOSE 9200