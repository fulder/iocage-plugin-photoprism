#!/bin/sh

echo "Clone photoprism repo"
git clone https://github.com/huo-ju/photoprism-freebsd-port

echo "Run make install"
cd photoprism-freebsd-port
#make config
#make && make install