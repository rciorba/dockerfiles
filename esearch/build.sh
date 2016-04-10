#!/bin/sh
if [ ! -f elasticsearch-2.1.1.deb ]; then
    wget https://download.elasticsearch.org/elasticsearch/release/org/elasticsearch/distribution/deb/elasticsearch/2.1.1/elasticsearch-2.1.1.deb
    # wget https://download.elasticsearch.org/elasticsearch/elasticsearch/elasticsearch-1.4.4.deb
fi
sum="`sha1sum elasticsearch-2.1.1.deb`"
expected_sum="6d0d6c61a10e380f1c5f2f4a9d15f8c2d52c48e0  elasticsearch-2.1.1.deb"

if [ "$sum" != "$expected_sum" ]; then
    echo "Checksum validation error. Got:"
    echo $sum
    echo "Expected:"
    echo "'${expected_sum}'"
    exit 1
fi
docker build -t rciorba/esearch .
