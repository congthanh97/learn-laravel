# learn-laravel
My Learning Session of Laravel following this screencast: https://laracasts.com/series/laravel-from-scratch-2018

# Setup:
1. I've updated c9 to PHP 7.2 using the scripts found in scripts/
2. and I've created sysmlinks to the config files of apache into my c9 workspace…
3. and I updated the virtual host to the ~/workspace/www/ folder where I checkout this repo
4. added additional php7.2 packages required to laravel/installer

# Install Laravel:

Following https://laravel.com/docs/5.7#installing-laravel

    $ composer global require "laravel/installer"
    
Add laravel it to the path (c9 specific), add this line to your ~/.bashrc

    export PATH=~/.composer/vendor/bin:$PATH 

Adjusting the DocumentRoot in the httpd.conf to ~/workspace/www/public/

# Database and Migrations

Skiping to https://laracasts.com/series/laravel-from-scratch-2018/episodes/7