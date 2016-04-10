FROM debian:7
MAINTAINER Radu Ciorba raduciorba@gmail.com
RUN apt-get -qq update
RUN DEBIAN_FRONTEND=noninteractive apt-get install openjdk-7-jre -y
ADD pidunu /usr/bin/pidunu
ADD elasticsearch-2.1.1.deb /tmp/elasticsearch-2.1.1.deb
RUN dpkg -i /tmp/elasticsearch-2.1.1.deb; mkdir -p /usr/share/elasticsearch/data/; chown elasticsearch:elasticsearch -R /usr/share/elasticsearch/data/
VOLUME /usr/share/elasticsearch/data/
EXPOSE 9200

USER elasticsearch
CMD ["/usr/bin/pidunu", "/usr/share/elasticsearch/bin/elasticsearch"]
