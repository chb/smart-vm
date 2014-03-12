#!/usr/bin/env bash

export DEBIAN_FRONTEND=noninteractive

# Make sure the system is up to date
apt-get update
apt-get upgrade -y

# Set Up Ansible
apt-get install -y git make python-yaml python-jinja2 python-paramiko
cd /var/tmp
git clone https://github.com/ansible/ansible.git
cd ansible
git checkout v1.5.2
make install
cd /var/tmp
rm -rf ansible

# Run Playbook
#cd /vagrant/provisioning
#ansible-playbook -e "hostname=localhost" -i hosts smart.yml