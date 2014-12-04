#!/usr/bin/env bash

if [ $(dpkg-query -W -f='${Status}' ansible 2>/dev/null | grep -c "ok installed") -eq 0 ];
then
    echo "Add APT repositories"
    export DEBIAN_FRONTEND=noninteractive
    sudo apt-get install -qq software-properties-common &> /dev/null || exit 1

    echo "Installing Ansible"
    sudo easy_install pip
    sudo pip install ansible
    echo "Ansible installed"
fi

cd /vagrant/provisioning
ansible-playbook vagrant.yml --connection=local