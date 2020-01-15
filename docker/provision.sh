#!/bin/bash
sudo yum check-update 
curl -fsSL https://get.docker.com/ | sh 
sudo systemctl start docker 
sudo systemctl enable docker
sudo echo "docker-host" > /etc/hostname 
sudo yum install mc tree tmux -y 
sudo sed -i 's/PasswordAuthentication no/PasswordAuthentication yes/g' /etc/ssh/sshd_config
sudo sed -i 's/#PermitRootLogin yes/PermitRootLogin yes/g' /etc/ssh/sshd_config
sudo sed -i 's/#PubkeyAuthentication yes/PubkeyAuthentication yes/g' /etc/ssh/sshd_config
sudo echo "*.* @@192.168.10.2:514" > /etc/rsyslog.d/all.conf
# cp /mnt/host_machine/rsyslog.conf /etc/rsyslog.conf 
sudo systemctl restart sshd
sudo yum update && yum install rsyslog
sudo systemctl start rsyslog
sudo systemctl enable rsyslog
sudo systemctl status rsyslog
# sudo ssh-keygen