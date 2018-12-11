#!/bin/bash

# https://stackoverflow.com/questions/48402621/how-to-switch-between-php-5-6-7-2-on-cloud9#48509743

echo "Started with a clean Cloud9 PHP/Apache workspace. I followed this article How to Install PHP 5.6, PHP 7.1 on Ubuntu 16.04, 14.04 using PPA and based on that, this is how it turned out:"

sudo apt-get install python-software-properties
sudo add-apt-repository ppa:ondrej/php
sudo apt-get update
sudo apt-get install -y php5.6
sudo apt-get install -y php7.2

echo "Then verify:"

php5.6 -v
php7.2 -v

echo 'I ran into an error after installing php7.2:"

$ php7.2 -v
php7.2: symbol lookup error: php7.2: undefined symbol: pcre_jit_exec
That I fixed following the advice "Upgrade your libpcre3 library to version from the repository."

Turns out that was "kept back" so I had to do this:'

apt-get install libpcre3 libpcre3-dev


echo 'PHP 7.2 started to work! Surprisingly, Cloud9s original PHP is left intact, that lives on under php5 and can be used anytime. So I can now juggle 3 different versions. Yes, phpinfo() shows the version I want every time! Re-running the Cloud9 worker is not even necessary.

The mbstring will be missing for 5.6 (ran into the problem when running phpmyadmin):'

sudo apt-get install php5.6-mbstring

echo "The php.ini files are located at:"

sudo find . -name 'php.ini'

echo "./php/7.2/apache2/php.ini
./php/7.2/cli/php.ini
./php/5.6/apache2/php.ini
./php/5.6/cli/php.ini
./php5/fpm/php.ini
./php5/apache2/php.ini
./php5/cli/php.ini"

