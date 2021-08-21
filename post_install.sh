#!/bin/sh

echo "Download photoprism prebuilt package"
fetch https://github.com/psa/photoprism-freebsd-port/releases/download/2021-05-23/photoprism-g20210523-FreeBSD-12.2-noAVX.txz

echo "Install photoprism"
pkg install -y photoprism-g20210523-FreeBSD-12.2-noAVX.txz

user_name="photoprism"

echo "Creating new user with name: ${user_name}"
pw useradd -n ${user_name} -c "Photoprism" -s /sbin/nologin -w no

echo "Start photoprism service"
chmod +x /usr/local/etc/rc.d/photoprism
sysrc -f /etc/rc.conf photoprism_enable="YES"
service photoprism start

echo "Post install completed!"
