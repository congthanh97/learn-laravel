#!/bin/bash

# issues installing laravel/installer, need zip component…

sudo apt-get install php-pear php7.2-curl php7.2-dev php7.2-gd php7.2-mbstring php7.2-zip php7.2-mysql php7.2-xml  php7.2-xmlrpc libapache2-mod-php -y

echo "Installing mcrypt
================================================================================
Press [Enter] to continue...

"
sudo apt-get -y install gcc make autoconf libc-dev pkg-config
sudo apt-get -y install libmcrypt-dev
sudo pecl install mcrypt-1.0.1

echo "

10. >>> YOU NEED TO MANUALLY <<< add the following line to your php.ini:
================================================================================

extension=mcrypt.so

I will create a symlink to your php.ini file in your workspace:

~/workspace/php.ini

"
sudo chmod 777 /etc/php/7.2/cli/php.ini
ln -s /etc/php/7.2/cli/php.ini ~/workspace/php.ini

# https://community.c9.io/t/setting-up-phpmyadmin/1723
phpmyadmin-ctl install