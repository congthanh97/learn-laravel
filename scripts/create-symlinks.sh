#!/bin/bash

cd ~/workspace/

sudo chown ubuntu:ubuntu /etc/apache2/apache2.conf
sudo chown ubuntu:ubuntu /etc/apache2/sites-enabled/001-cloud9.conf

ln -s /etc/apache2/apache2.conf
ln -s /etc/apache2/sites-enabled/001-cloud9.conf
ln -s /etc/apache2/sites-enabled/