#!/bin/bash

echo "atualizando servidor e instalando aplicativos..."
apt-get update && upgrade -y
apt-get install apache2 unzip -y

echo "baixando aplicação..."
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip 
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html
