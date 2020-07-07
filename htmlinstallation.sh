
#!/bin/sh

/usr/bin/git clone https://github.com/gonjumixproject/HTMLandPHP-Implementation-MakeMeFamous.git
cd HTMLandPHP-Implementation-MakeMeFamous
cp * /var/www/html
ip=$(hostname -I | cut -d ' ' -f 1)
sed -i "s/\<THISWILLBETHEIPOFTHESERVER\>/$ip/g" /var/www/html/*
cd /var/www/html
chown www-data:www-data *

