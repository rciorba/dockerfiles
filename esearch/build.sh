#!/bin/sh
if [ ! -f elasticsearch-1.4.4.deb ]; then
    wget https://download.elasticsearch.org/elasticsearch/elasticsearch/elasticsearch-1.4.4.deb
fi
sum="`sha1sum elasticsearch-1.4.4.deb`"
expected_sum="63471c1e9d5f6c5cf2c4d5fe20a9c27c86720810  elasticsearch-1.4.4.deb"

if [ "$sum" != "$expected_sum" ]; then
    echo "Checksum validation error. Got:"
    echo $sum
    echo "Expected:"
    echo $expected_sum
    exit 1
fi
docker build -t rciorba/esearch .
