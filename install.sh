#!/bin/sh

#composerdownload.sh
apt-get update
apt-get install php7.2 php-curl composer 

apt-get install python3.7
apt-get install python3-pip
apt-get install python3.7

mkdir /home/composer/
mkdir /home/composer/vendor/images
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


#googleimagebinkdowload.sh

cd /home
mkdir /home/composer/vendor/images
chown www-data:www-data images
/usr/bin/git clone https://github.com/hardikvasa/google-images-download.git
cd google-images-download && sudo python3.7 setup.py install
cd /home
/usr/bin/git clone https://github.com/gonjumixproject/BingImageDowloader-Impelementation-MakeMeFamous.git
cd BingImageDowloader-Impelementation-MakeMeFamous/
chmod 777 google_install_2.py
cp google_install_2.py /home/google-images-download/google_images_download/

#webhook.sh

ip=$(hostname -I | cut -d ' ' -f 1)
apt-get install webhook
 
/usr/bin/git clone https://github.com/gonjumixproject/WebHook-Implementation-MakeMeFamous.git

mkdir /var/webhook 

cd WebHook-Implementation-MakeMeFamous/

cp * /var/webhook 

cd /var/webhook 

/usr/bin/webhook -hooks hooks.json -verbose -ip $ip &

#htmlinstallation.sh

/usr/bin/git clone https://github.com/gonjumixproject/HTMLandPHP-Implementation-MakeMeFamous.git
cd HTMLandPHP-Implementation-MakeMeFamous
cp * /var/www/html
ip=$(hostname -I | cut -d ' ' -f 1)
sed -i "s/\<THISWILLBETHEIPOFTHESERVER\>/$ip/g" /var/www/html/*
cd /var/www/html
chown www-data:www-data *
chown www-data:www-data /var/www/html


# WebHook Restart

webhookpid=$(netstat -peanut | grep :9000 | awk -F' ' '{print $9}' | awk -F'/' '{print $1}')

kill -9 $webhookpid
cd /var/webhook
#restart weebhook
/usr/bin/webhook -hooks hooks.json -verbose -ip $ip &
