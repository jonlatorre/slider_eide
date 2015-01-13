#!/bin/sh
sudo apt-get install -y nginx-light matchbox chromium x11-xserver-utils ttf-mscorefonts-installer xwit sqlite3 libnss3

echo "Copiamos el boot config"
sudo cp confs/config.txt /boot/

echo "Copiamos rc.local"
sudo cp confs/rc.local /etc/
sudo chown root:root /etc/rc.local
sudo chmod 755 /etc/rc.local

sudo cp confs/xinitrc /boot/
sudo chown root:root  /boot/xinitrc
sudo chmod 755 /boot/xinitrc

echo "Copiamos la web"
sudo cp index.html imagenes bootstrap bower_components /usr/share/nginx/www -a

echo "Ahora a reiniciar. Pulse intro y haremos un reboot"
read OK
sudo reboot
