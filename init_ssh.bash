#!/bin/bash

home="/home/jenkins"

sudo useradd jenkins

sudo mkdir -p $home/.ssh

sudo cp /vagrant/id_rsa $home/.ssh

sudo cp /vagrant/id_rsa.pub $home/.ssh/authorized_keys

sudo chown -R jenkins:jenkins $home

sudo chmod 600 $home/.ssh/id_rsa
