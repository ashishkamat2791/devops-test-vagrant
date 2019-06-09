#!/bin/bash

apt-get update
add-apt-repository ppa:linuxuprising/java -y
 apt-get update -y
 echo oracle-java11-installer shared/accepted-oracle-licence-v1-2 boolean true | sudo /usr/bin/debconf-set-selections
 apt-get install oracle-java11-installer -y

  apt-get install oracle-java11-set-default -y
wget -q -O - https://pkg.jenkins.io/debian/jenkins-ci.org.key | sudo apt-key add -
echo deb http://pkg.jenkins.io/debian-stable binary/ | sudo tee /etc/apt/sources.list.d/jenkins.list
apt-get update
sudo apt-get install jenkins -y

sudo service jenkins start
sudo echo "***** Admin Password ******"
sudo cat /var/lib/jenkins/secrets/initialAdminPassword
sudo echo "***** Admin Password ******"
