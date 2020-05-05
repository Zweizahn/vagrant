#!/usr/bin/env bash

sudo dnf update -y     
sudo dnf install -y wget
sudo dnf install -y curl
sudo dnf install -y vim
sudo dnf install -y git    
sudo dnf install -y build-essential
sudo dnf install -y unzip 
sudo dnf -y install net-tools

# Preparing for Puppet installation
sudo dnf -y install https://dl.fedoraproject.org/pub/epel/epel-release-latest-8.noarch.rpm
sudo dnf -y install https://yum.puppetlabs.com/puppet-release-el-8.noarch.rpm
sudo dnf install -y epel-release
sudo dnf -y install gcc gcc-c++ kernel-devel
sudo dnf -y install puppet-bolt

sudo timedatectl set-timezone Europe/Berlin

ssh-keygen -t rsa -b 2048  -f /home/vagrant/.ssh/id_rsa


echo " 

10.1.1.10 master
10.1.1.11 agent
10.1.1.12 webserver
10.1.1.13 appserver
" >> /etc/hosts

