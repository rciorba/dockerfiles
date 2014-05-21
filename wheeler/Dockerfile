FROM debian:7.4
MAINTAINER Radu Ciorba raduciorba@gmail.com
RUN apt-get -qq update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y -qq python2.7 python-setuptools python-dev libzmq-dev -y; easy_install "pip==1.5.6"; pip install "wheel==0.23.0" "setuptools==3.6"

