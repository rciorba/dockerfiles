FROM ubuntu:12.04
MAINTAINER Radu Ciorba raduciorba@gmail.com

ADD https://github.com/coreos/etcd/releases/download/v0.4.6/etcd-v0.4.6-linux-amd64.tar.gz /tmp/etcd-v0.4.6-linux-amd64.tar.gz
RUN tar xzf /tmp/etcd-v0.4.6-linux-amd64.tar.gz

USER www-data
CMD /etcd-v0.4.6-linux-amd64/etcd -name=$HOSTNAME -data-dir=/data
# CMD export LN_SETTINGS=/conf/ln_conf.conf; supervisord -c /var/www/src/supervisor.conf
# assumes /var/log exists and is writable; should be bind mounted from the host