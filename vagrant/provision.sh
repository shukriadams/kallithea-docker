#!/usr/bin/env bash
sudo apt-get update

# docker
sudo apt install docker.io -y
sudo apt install docker-compose -y

#reboot required for this to work
sudo usermod -aG docker vagrant

# force startup folder to vagrant project
echo "cd /vagrant" >> /home/vagrant/.bashrc

# set hostname, makes console easier to identify
sudo echo "kallitheaBuild" > /etc/hostname
sudo echo "127.0.0.1 kallitheaBuild" >> /etc/hosts
