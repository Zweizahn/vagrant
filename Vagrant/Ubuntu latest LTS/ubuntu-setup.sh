#!/usr/bin/env bash

sudo apt-get update
sudo apt-get dist-upgrade -y

ssh-keygen -t rsa -b 2048  -f /home/vagrant/.ssh/id_rsa

echo " 

10.0.1.10 controller
10.0.1.11 node1
10.0.1.12 node2
10.0.1.13 node3
" >> /etc/hosts

