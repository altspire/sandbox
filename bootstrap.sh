#!/usr/bin/env bash

add-apt-repository ppa:webupd8team/java
apt-get update
sudo apt-get install oracle-java8-installer
apt-get install -y apache2
apt-get install maven

if ! [ -L /var/www ]; then
  rm -rf /var/www
  ln -fs /vagrant /var/www
fi