#!/usr/bin/env bash

sudo apt-get update
sudo apt-get dist-upgrade -y
sudo apt-get remove docker docker-engine docker.io
sudo apt install docker.io

ssh-keygen -t rsa -b 2048  -f /home/vagrant/.ssh/id_rsa

echo " 

10.0.5.10 Jenkins
" >> /etc/hosts

