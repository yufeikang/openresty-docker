FROM openresty/openresty:1.19.3.2-2-alpine-fat

COPY config/nginx.conf /usr/local/openresty/nginx/conf/nginx.conf
COPY config/gen_ssl.sh /bin/gen_ssl.sh

RUN apk add --no-cache \
    bash \
    curl \
    diffutils \
    grep \
    openssl \
    sed
    
RUN luarocks install lua-resty-auto-ssl && \
    sh /bin/gen_ssl.sh 


