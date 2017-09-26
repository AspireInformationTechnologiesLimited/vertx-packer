#!/usr/bin/env bash

sudo su
sudo add-apt-repository -y ppa:webupd8team/java 
sudo apt-get -y update
echo debconf shared/accepted-oracle-license-v1-1 select true | sudo debconf-set-selections
echo debconf shared/accepted-oracle-license-v1-1 seen true | sudo debconf-set-selections
sudo apt-get -y install oracle-java8-installer oracle-java8-set-default
wget -P /tmp https://bintray.com/artifact/download/vertx/downloads/vert.x-3.4.2-full.tar.gz
tar -xzf /tmp/vert.x-3.4.2-full.tar.gz -C /opt/
export PATH=$PATH:/opt/vertx/bin
echo $PATH
vertx -version