#!/usr/bin/bash
# This can be dropped on fresh server to start installs

dnf install https://dl.fedoraproject.org/pub/epel/epel-release-latest-8.noarch.rpm -y
dnf install -y ansible
sudo -u ec2-user ansible-galaxy install -r ./requirements.yaml --force
sudo -u ec2-user ansible-playbook ./cent8setup.yaml
