#!/bin/bash
## Install latest version of Docker Community version in a rpm based repo

## Source - https://docs.docker.com/engine/install/centos/

sudo yum install -y yum-utils
sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
sudo yum install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
sudo systemctl start docker
