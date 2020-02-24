FROM ubuntu:18.04
ENV APPS \
    nginx \
    # php7.3-cli \
    php7.3-fpm 
    # php7.3-mysql \
    # php7.3-json \
    # php7.3-opcache \
    # php7.3-mbstring \
    # php7.3-xml \
    # php7.3-gd \
    # php7.3-curl
RUN apt-get --no-install-recommends --no-upgrade update -y \
 && apt-get --no-install-recommends --no-upgrade install software-properties-common -y \
 && add-apt-repository ppa:ondrej/php -y
RUN apt-get install --no-install-recommends --no-upgrade ${APPS} -y \
 && sed -i 's/listen = \/run\/php\/php7.3-fpm.sock/listen = 127.0.0.1:9000/g' /etc/php/7.3/fpm/pool.d/www.conf \
 && mkdir /run/php/ \
 && apt-get –-purge remove software-properties-common
COPY source/default /etc/nginx/sites-available/default
COPY source/info.php /var/www/html/info.php
COPY source/start.sh /root/start.sh

EXPOSE 80
CMD [ "/root/start.sh" ]