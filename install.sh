#!/bin/bash

sudo apt install apache2 php7.0 apache2-mod-php7.0 nginx libapache2-mod-rpaf;
sudo cp -r ./* /var/www/html;
sudo cp -r ./files/apache2 /etc;
sudo cp -r ./files/nginx /etc;


