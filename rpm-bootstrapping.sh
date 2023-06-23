#!/bin/bash

## Bootstrapping for RPM based distributions in Dev Environments
## 1. Disable SELinux

sudo sed -i 's/enforcing/disabled/g' /etc/selinux/config /etc/selinux/config
sudo sestatus
echo ""
echo "Finished with script execution!"
echo "In the above output, you'll see that the value of 'SELinux status' is 'enabled'."
echo "That is normal. Do the following two steps:"
echo " 1. reboot your environment: "
echo ""
echo "      sudo shutdown -r now"
echo ""
echo " 2. When you server comes back online, run this command:"
echo ""
echo "      sudo sestatus"
echo ""
echo "    You should then see 'SELinux status: disabled' to confirm that SELinux is in fact disabled"
echo ""

## 2. Install basic tools
sudo yum install -y bind-tools net-tools telnet
