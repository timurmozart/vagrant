#!/bin/bash
sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt autoremove -y
sudo sed -i 's/ubuntu-bionic/rsyslog-server/g' /etc/hostname
sudo apt-get install mc tree -y
sudo sed -i 's/PasswordAuthentication no/PasswordAuthentication yes/g' /etc/ssh/sshd_config
cp /mnt/host_machine/rsyslog.conf /etc/rsyslog.conf 
sudo reboot now
