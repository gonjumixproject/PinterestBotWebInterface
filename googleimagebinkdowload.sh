#!/bin/sh

apt-get install python3.7
apt-get install python3-pip
apt-get install python3.7

cd /home
/usr/bin/git clone https://github.com/hardikvasa/google-images-download.git
cd google-images-download && sudo python3.7 setup.py install
cd /home
/usr/bin/git clone https://github.com/gonjumixproject/BingImageDowloader-Impelementation-MakeMeFamous.git
cd BingImageDowloader-Impelementation-MakeMeFamous
chmod 777 google_install_2.py
cp google_install_2.py ../google_images_download

