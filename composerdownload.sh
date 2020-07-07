#!/bin/sh

apt-get install php7.2 curl php-curl composer 
mkdir /home/composer/
cd /home/composer/
/usr/bin/composer require seregazhuk/pinterest-bot
/usr/bin/git clone https://github.com/gonjumixproject/Composer-Implementation-MakeMeFamous
cd Composer-Implementation-MakeMeFamous
cp * /home/composer/vendor
cp * /home/composer/

cd /home/composer/vendor

chown www-data:www-data auto_pins_values.php
chown www-data:www-data auto_follower.php
chown www-data:www-data login.sh
chown www-data:www-data run_auto_follow.sh
chown www-data:www-data run_auto_pins.sh

cd /home/composer/

chown www-data:www-data auto_pins_values.php
chown www-data:www-data auto_follower.php
chown www-data:www-data login.sh
chown www-data:www-data run_auto_follow.sh
chown www-data:www-data run_auto_pins.sh
