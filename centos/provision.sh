#!/bin/bash
yum update -y
yum upgrade -y
yum install mc tree tmux -y
sed -i 's/PasswordAuthentication no/PasswordAuthentication yes/g' /etc/ssh/sshd_config
systemctl restart sshd
yum install -y mariadb-server
yum install -y epel-release
yum makecache fast
yum install -y nginx
rpm -ivh http://rpms.remirepo.net/enterprise/remi-release-7.rpm
yum makecache fast
yum install php73-php php73-php-mysqlnd php73-php-fpm php73-php-gd php73-php-xml php73-php-mbstring php73-php-pdo  php73-php-opcache -y
mkdir /run/php-fpm
chown nginx /run/php-fpm