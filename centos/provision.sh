#!/bin/bash
sudo yum update -y
sudo yum upgrade -y
sudo yum install mc tree tmux -y
sudo sed -i 's/PasswordAuthentication no/PasswordAuthentication yes/g' /etc/ssh/sshd_config
sudo systemctl restart sshd
