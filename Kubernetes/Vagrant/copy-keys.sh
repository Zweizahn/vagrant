#!/bin/bash

sshpass -p vagrant ssh-copy-id -i /home/vagrant/.ssh/id_rsa k8-node1
sshpass -p vagrant ssh-copy-id -i /home/vagrant/.ssh/id_rsa k8-node2
sshpass -p vagrant ssh-copy-id -i /home/vagrant/.ssh/id_rsa k8-node3
