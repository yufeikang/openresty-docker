# openresty-docker
with auto ssl

# install

```
docker run -p 80:80 -p 443:443 -v $(pwd)/auto_ssl:/etc/resty-auto-ssl --name openresty -d  ghcr.io/yufeikang/openresty-docker:main
```
