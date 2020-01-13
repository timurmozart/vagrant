#!/bin/bash
sudo yum check-update \
curl -fsSL https://get.docker.com/ | sh \
sudo systemctl start docker \
sudo systemctl enable docker \
sudo echo "docker-host" > /etc/hostname \
sudo yum install mc tree tmux -y 
sudo sed -i 's/PasswordAuthentication no/PasswordAuthentication yes/g' /etc/ssh/sshd_config
sudo sed -i 's/#PermitRootLogin yes/PermitRootLogin yes/g' /etc/ssh/sshd_config
sudo sed -i 's/#PubkeyAuthentication yes/PubkeyAuthentication yes/g' /etc/ssh/sshd_config
# sudo cp -r /mnt/host_machine/.ssh/ /home/vagrant/.ssh/
sudo systemctl restart sshd
# sudo ssh-keygen