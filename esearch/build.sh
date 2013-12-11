#!/bin/sh
# wget https://download.elasticsearch.org/elasticsearch/elasticsearch/elasticsearch-0.90.6.deb
wget https://download.elasticsearch.org/elasticsearch/elasticsearch/elasticsearch-0.90.6.noarch.rpm
docker build -t e_search_centos .
