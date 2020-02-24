#!/bin/bash
sudo apt-get update && apt-get upgrade -y 
sudo apt-get install nginx supervisor -y 
# sudo apt-get install software-properties-common -y 
# sudo add-apt-repository ppa:ondrej/php -y 
sudo apt-get update 
sudo apt-get install php7.4-fpm -y 
# sudo sed -i 's+/run/php/php7.4-fpm.sock+127.0.0.1:9000+g' /etc/php/7.4/fpm/pool.d/www.conf 
sudo apt-get clean

sudo cp -f -R /mnt/host_machine/default /etc/nginx/sites-available/
sudo cp -f /mnt/host_machine/test.php /var/www/html/
sudo cp -f /mnt/host_machine/supervisord.conf /
# sudo /usr/bin/supervisord -c /supervisord.conf