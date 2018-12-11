#!/bin/bash

echo "Switch from anything to 7.2 PHP"

#sudo a2dismod php5
#sudo a2dismod php5.6
#sudo a2enmod php7.2
#sudo service apache2 restart

#With 1 line:
sudo a2dismod php5 && sudo a2dismod php5.6 && sudo a2enmod php7.2 && sudo service apache2 restart
