FROM ubuntu:16.04

ENV INSTALL_APPS \
    nginx \
    php-fpm\
    nano \
    mc \
    htop

RUN apt-get update && apt-get install -y ${INSTALL_APPS}

RUN sed -i 's/;cgi.fix_pathinfo=1/cgi.fix_pathinfo=0/g' /etc/php/7.0/fpm/php.ini

COPY default /etc/nginx/sites-available/