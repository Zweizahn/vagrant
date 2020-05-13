#!/usr/bin/env bash

sudo apt-get update
sudo apt-get dist-upgrade -y

# Disable swap
swapoff -a
sed -i.bak '/ swap / s/^\(.*\)$/#\1/g' /etc/fstab

ssh-keygen -t rsa -b 2048  -f /home/vagrant/.ssh/id_rsa -q -P ""

echo " 

10.0.0.20 k8-master
10.0.0.21 k8-node1
10.0.0.22 k8-node2
10.0.0.23 k8-node3
" >> /etc/hosts

