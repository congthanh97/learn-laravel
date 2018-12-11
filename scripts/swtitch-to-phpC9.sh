#!/bin/bash


echo "Switch from anything to original PHP from Cloud9"

#sudo a2dismod php7.2
#sudo a2dismod php5.6
#sudo a2enmod php5
#sudo service apache2 restart

#With 1 line:

sudo a2dismod php7.2 && sudo a2dismod php5.6 && sudo a2enmod php5 && sudo service apache2 restart
