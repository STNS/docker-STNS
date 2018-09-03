STNS Dockerfile [![Docker Pulls](https://img.shields.io/docker/pulls/stns/stns.svg?maxAge=2592000?style=flat-square)](https://hub.docker.com/r/stns/stns/) [![](https://images.microbadger.com/badges/image/stns/stns.svg)](https://microbadger.com/images/stns/stns "Get your own image badge on microbadger.com")
===

Docker image for [STNS](https://github.com/STNS/STNS).

### the Docker Hub page

- https://hub.docker.com/r/stns/stns

### Supported tags

- `latest`, `1.0.0`, `0.3`, `0.3-0`, `0.3-1`, `0.3-2`, `0.3-3`
- `0.2`, `0.2-1`, `0.2-2`
- `0.1`, `0.1-3`

### Howto
```bash
# docker run -d --name stns stns:latest
# docker exec -it stns /bin/bash
$ id example
$ /usr/local/lib/stns-key-wrapper example
```

### Base docker Image

- [ubuntu](https://hub.docker.com/_/ubuntu/)

What's STNS?
---

STNS (Simple TOML Name Service) allows you to easily manage Linux users with simple TOML-based configuration. It consists of server and client implementation, which requires only a few steps to install. Moreover, you can use it with existing user management systems such as LDAP.

If you'd like to see more detailed, please check http://stns.jp/ .

LICENSE
---

https://hfm.mit-license.org/
