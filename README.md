## modified geoip2-haproxy-ranges

- Add Dockerfile
- Changed from native Go to Docker golang:1.15
- Automatic execution every 72 hours

## Running in docker

```sh
git clone https://github.com/ntsklab/geoip2-haproxy-ranges
cd geoip2-haproxy-ranges
docker build -t geoip2-haproxy-ranges .
docker run --name < name > -v < host mmdb dir >:/usr/local/var/GeoIP/ geoip2-haproxy-ranges:latest
```


### Below is the original Readme.md

## Generate ACL files per country for use with HAProxy

Inspired by https://github.com/berkayunal/haproxy-geoip-iprange, but for use with GeoIP2/GeoLite2 dbs.

Download the free versions from https://dev.maxmind.com/geoip/geoip2/geolite2/.

* [Introduction to HAProxy ACLs](https://www.haproxy.com/blog/introduction-to-haproxy-acls/)
* [Dovecot and HAProxy](https://wiki.dovecot.org/HAProxy)


## Running

```sh
git clone https://github.com/andyjack/geoip2-haproxy-ranges
cd geoip2-haproxy-ranges
go get github.com/oschwald/maxminddb-golang
go run . --db path/to/GeoLite2-Country.mmdb --destDir output
```