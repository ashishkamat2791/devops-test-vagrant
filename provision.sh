#!/bin/bash
apt-get update

#Install latest docker on all machines
wget -qO- https://get.docker.com/ |sh 
 usermod -aG docker vagrant
 docker --version