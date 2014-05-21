#!/bin/sh
docker run -v `pwd`/wheelhouse:/wheelhouse:rw pip wheel -r /wheelhouse/REQUIREMENTS