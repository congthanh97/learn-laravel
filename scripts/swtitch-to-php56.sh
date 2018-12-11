#!/bin/bash


echo "Switch from anything to 5.6 PHP"

#sudo a2dismod php5
#sudo a2dismod php7.2
#sudo a2enmod php5.6
#sudo service apache2 restart

#With 1 line:

sudo a2dismod php5 && sudo a2dismod php7.2 && sudo a2enmod php5.6 && sudo service apache2 restart
