#!/bin/bash
sudo yum check-update 
sudo echo "jenkins-host" > /etc/hostname 
sudo yum update -y
sudo yum install wget -y
sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key
sudo yum install mc tree tmux jenkins -y 
sudo sed -i 's/PasswordAuthentication no/PasswordAuthentication yes/g' /etc/ssh/sshd_config
# sudo sed -i 's/#PermitRootLogin yes/PermitRootLogin yes/g' /etc/ssh/sshd_config
sudo sed -i 's/#PubkeyAuthentication yes/PubkeyAuthentication yes/g' /etc/ssh/sshd_config
# sudo echo "*.* @@192.168.10.2:514" > /etc/rsyslog.d/all.conf
# cp /mnt/host_machine/rsyslog.conf /etc/rsyslog.conf 
sudo systemctl restart sshd
# sudo yum update && yum install rsyslog
# sudo systemctl start rsyslog
# sudo systemctl enable rsyslog
# sudo systemctl status rsyslog
# sudo usermod -aG docker vagrant
# sudo ssh-keygen