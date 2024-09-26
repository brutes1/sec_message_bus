#!/bin/bash

# Install Docker and Docker Compose
sudo yum install -y epel-release
sudo yum install -y docker
sudo systemctl start docker
sudo systemctl enable docker

# Make sure Docker Compose is installed
if ! command -v docker-compose &> /dev/null
then
    sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
    sudo chmod +x /usr/local/bin/docker-compose
fi
