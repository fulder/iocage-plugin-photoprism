#!/bin/sh

echo "Download photoprism prebuilt package"
fetch https://github.com/psa/photoprism-freebsd-port/releases/download/2021-05-23/photoprism-g20210523-FreeBSD-12.2-noAVX.txz

echo "Install photoprism"
pkg install -y photoprism-g20210523-FreeBSD-12.2-noAVX.txz

echo "Start photoprism service"
chmod +x /usr/local/etc/rc.d/photoprism
sysrc -f /etc/rc.conf photoprism_enable="YES"
sysrc -f /etc/rc.conf photoprism_assetspath="/var/db/photoprism/assets"
sysrc -f /etc/rc.conf photoprism_storagepath="/var/db/photoprism/storage"
sysrc -f /etc/rc.conf photoprism_originalspath="/var/db/photoprism/storage/originals"
sysrc -f /etc/rc.conf photoprism_flags="-public"
service photoprism start

echo "Post install completed!"
