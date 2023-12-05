## Generate ACL files per country for use with HAProxy

Inspired by https://github.com/berkayunal/haproxy-geoip-iprange, but for use with GeoIP2/GeoLite2 dbs.

Download the free versions from https://dev.maxmind.com/geoip/geoip2/geolite2/.

* [Introduction to HAProxy ACLs](https://www.haproxy.com/blog/introduction-to-haproxy-acls/)
* [Dovecot and HAProxy](https://wiki.dovecot.org/HAProxy)


## Running

```sh
git clone https://github.com/ntsklab/geoip2-haproxy-ranges
cd geoip2-haproxy-ranges
docker build -t geoip2-haproxy-ranges .
docker run --name <name> -v <host mmdb dir>:/usr/local/var/GeoIP/ geoip2-haproxy-ranges:latest
```
