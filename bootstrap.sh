#!/usr/bin/env bash

apt-get update
apt-get install -y python3
apt-get install -y python-pip
apt-get install -y apache2
apt-get install -y mysql-server-5.5

if ! [ -L /var/www ]; then
  rm -rf /var/www
  ln -fs /vagrant /var/www
fi
