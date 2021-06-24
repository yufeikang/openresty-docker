FROM openresty/openresty:1.19.3.2-2-alpine-fat

RUN apk add --no-cache \
    bash \
    curl \
    diffutils \
    grep \
    openssl \
    sed
    
RUN luarocks install lua-resty-auto-ssl
