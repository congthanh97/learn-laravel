#!/bin/bash
clear

read -p "
CREATE SSH KEYS
================================================
Creating new SSH Keys for GITLAB for '${C9_HOSTNAME}':


Press [Enter] to continue...

"

rm -rf  ~/.ssh/id_rsa*

# Create Key without password
ssh-keygen -b 4048 -t rsa -C "${C9_HOSTNAME}" -N "" -f "/home/ubuntu/.ssh/id_rsa"
# Copy to webroot
cat ~/.ssh/id_rsa.pub > ~/workspace/www/ssh-key

read -p "

Keys generated…


Press [Enter] to continue..."

clear
echo "
COPY YOUR KEY TO GITLAB:
================================================
Open https://${C9_HOSTNAME}/ssh-key and copy the content to yout gitlab user: https://gitlab.com/profile/keys

Your public SSH KEY:
"

cat ~/.ssh/id_rsa.pub

read -p "


Press [Enter] to after coping your SSH Key to your gitlab account...
"
