FROM ubuntu:trusty
MAINTAINER Radu Ciorba raduciorba@gmail.com
RUN apt-get -qq update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y -qq mongodb

EXPOSE 27017
USER www-data
#ENTRYPOINT ["/usr/bin/mongod"]
#CMD []
CMD ["/usr/bin/mongod"]