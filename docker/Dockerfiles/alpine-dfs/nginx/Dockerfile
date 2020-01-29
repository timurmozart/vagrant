FROM alpine

ENV APKS \
    nginx \
    php7 \
    php7-fpm \
    php7-opcache

RUN apk -U --no-cache add ${APKS} \
    && touch /var/www/index.html 
    # && echo "Hello world!" > /var/www/index.html

ADD nginx.conf /etc/nginx/nginx.conf
ADD nginx.default /etc/nginx/conf.d/default.conf
ADD info.php /var/www/info.php
EXPOSE 80
ENTRYPOINT nginx