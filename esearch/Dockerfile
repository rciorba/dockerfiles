FROM centos
MAINTAINER Radu Ciorba radu.ciorba@3pillarglobal.com
RUN yum install -y which-2.19-6.el6.x86_64
RUN yum install -y java-1.7.0-openjdk.x86_64
ADD elasticsearch-0.90.6.noarch.rpm elasticsearch-0.90.6.noarch.rpm
RUN rpm -i elasticsearch-0.90.6.noarch.rpm

EXPOSE 80