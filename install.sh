#!/bin/bash

sudo apt install apache2 php7.0 apache2-mod-php7.0 nginx libapache2-mod-rpaf;
sudo apt install sysstat;
sudo service apache2 stop;
sudo service nginx stop;
sudo rmdir /etc/apache2 /etc/nginx;
sudo cp -r ./* /var/www/html;
sudo cp -r ./files/apache2 /etc;
sudo cp -r ./files/nginx /etc;
sudo chmod -R 666 /var/www/html/*;
sudo chmod 777 /var/www/html/scriptcrontoptalkers.sh /var/www/html/scriptinfo.sh /var/www/html/scripttoptalkers.sh;
sudo service apache2 start;
sudo service nginx start;

