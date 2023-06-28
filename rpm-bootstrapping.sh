#!/bin/bash

## Bootstrapping for RPM based distributions in Dev Environments
## 1. Disable SELinux

sudo sed -i 's/enforcing/disabled/g' /etc/selinux/config /etc/selinux/config
sudo sestatus
echo "Finished with script execution! SELinux will be disabled on reboot"


## 2. Install basic tools
sudo yum install -y bind-tools net-tools telnet wget

## 3. Install Python 3.9
echo "Python 3.9 Installing... "
echo "Installation will take 5-10mins as the binaries are compied from source"
sleep 3
sudo yum  -y groupinstall 'development tools'
sudo yum -y install wget openssl-devel bzip2-devel libffi-devel net-tools bind-tools telnet
sudo curl https://www.python.org/ftp/python/3.10.0/Python-3.10.0.tgz -O
tar -xvf Python-3.10.0.tgz
cd Python-3.10.0
sudo ./configure --enable-optimizations
sudo make install
python3 -V
echo "Python 3.10 Install Complete"



