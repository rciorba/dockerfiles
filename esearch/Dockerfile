FROM centos
MAINTAINER Radu Ciorba raduciorba@gmail.com
RUN yum install -y which-2.19-6.el6.x86_64
RUN yum install -y java-1.7.0-openjdk.x86_64
ADD elasticsearch-1.1.1.noarch.rpm elasticsearch-1.1.1.noarch.rpm
RUN rpm -i elasticsearch-1.1.1.noarch.rpm
