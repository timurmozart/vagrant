#!/bin/bash
sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt autoremove -y
sudo sed -i 's/ubuntu-bionic/rsyslog-0/g' /etc/hostname
sudo apt-get install mc tree -y
# sudo systemctl enable chrony
# sudo systemctl start chrony
sudo sed -i 's/#module(load="imudp")/module(load="imudp")/g' /etc/rsyslog.conf
sudo sed -i 's/#input(type="imudp" port="514")/input(type="imudp" port="514")/g' /etc/rsyslog.conf
sudo sed -i 's/#module(load="imtcp")/module(load="imtcp")/g' /etc/rsyslog.conf
sudo sed -i 's/#input(type="imtcp" port="514")/input(type="imtcp" port="514")/g' /etc/rsyslog.conf
sudo sed -i 's/PasswordAuthentication no/PasswordAuthentication yes/g' /etc/ssh/sshd_config
sudo reboot now
