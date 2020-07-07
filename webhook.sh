#!/bin/sh

#!/bin/sh

ip=$(hostname -I | cut -d ' ' -f 1)
apt-get install webhook
 
/usr/bin/git clone https://github.com/gonjumixproject/WebHook-Implementation-MakeMeFamous.git

mkdir /var/webhook 

WebHook-Implementation-MakeMeFamous

cp * /var/webhook 

cd /var/webhook 

/usr/bin/webhook -hooks hooks.json -verbose -ip $ip &
