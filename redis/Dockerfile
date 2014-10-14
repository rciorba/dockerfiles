FROM ubuntu:trusty
MAINTAINER Radu Ciorba raduciorba@gmail.com
RUN apt-get -qq update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y -qq redis-server
ADD redis.conf /etc/redis/redis.conf

EXPOSE 6379
USER redis
# ENTRYPOINT ["/usr/bin/redis-server"]
cmd ["/usr/bin/redis-server", "/etc/redis/redis.conf"]
