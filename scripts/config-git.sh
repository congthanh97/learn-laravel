#!/bin/bash
clear


read -p "
SETUP GIT FOR '${C9_PROJECT}'
================================================

HI … UMH… Don't know your name, what's your real first- and lastname?
" USERNAME
USERNAME=${USERNAME:-${C9_USER}}

read -p "
Ah, thanks ${USERNAME}! Now we need your GITLAB E-Mail:
" EMAIL
EMAIL=${EMAIL:-${C9_EMAIL}}
read -p "
Thank you ${USERNAME}, we'll update git with the following config:

git config --global user.name ${USERNAME}
git config --global user.email ${C9_EMAIL}

Press [Enter] to configure..."

git config --global user.name "${USERNAME}"
git config --global user.email "${C9_EMAIL}"
git config --global core.autocrlf input

read -p "

Done…

Press [Enter] to continue..."

clear
