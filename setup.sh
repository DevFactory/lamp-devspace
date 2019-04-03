#!/bin/bash

mkdir /data
rm /var/www/html
ln -s /data /var/www/html
sed -i "s;/app;/data;g" run.sh

apt-get autoremove --yes
apt-get clean all
rm -rf /var/lib/apt/lists/*
