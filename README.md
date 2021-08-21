Iocage [PhotoPrism](https://github.com/photoprism/photoprism/) plugin for TrueNAS CORE. 


# Testing manually

In TrueNAS CORE SSH shell run:

* `fetch https://raw.githubusercontent.com/fulder/iocage-plugin-index/master/photoprism.json`
* `iocage fetch -P photoprism.json --name photoprism dhcp=on`
 