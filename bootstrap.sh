#!/usr/bin/env bash

apt install software-properties-common
add-apt-repository ppa:webupd8team/java
apt-get update
apt-get install oracle-java8-installer
apt-get install -y apache2
apt install maven

if ! [ -L /var/www ]; then
  rm -rf /var/www
  ln -fs /vagrant /var/www
fi

cp settings.xml /etc/maven/
mvn compile