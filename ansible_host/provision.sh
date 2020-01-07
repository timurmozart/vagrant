#!/bin/bash
sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt autoremove -y
sudo sed -i 's/ubuntu-bionic/ansible-host/g' /etc/hostname
sudo apt-get install mc ansible sshpass -y
sudo sed -i 's/PasswordAuthentication no/PasswordAuthentication yes/g' /etc/ssh/sshd_config


sudo reboot now

