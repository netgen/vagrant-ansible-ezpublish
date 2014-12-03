vagrant-ansible-symfony
=======================

Vagrant box, with Ansible provisioning to setup new Symfony project.

## Prerequisites

You need to be using either OSX or linux as your OS.

If you are using Windows, let me know so I can take a look how to setup the ansible-pull (and if it is possible)

You need to have following installed:
- [Vagrant]
- [Ansible]

## Local development setup

The local development is meant to be used in a vagrant provisioned box.

The provisioner for the project is ansible.

Once you have the prerequisites setup, you can run the
```
vagrant up
```

from you terminal to start the process up.

If you do not see an error message, go get yourself a cup of coffee or your favorite beverage,
you deserve it.

If you start seeing the connection timeout after adding of the private key
```
    default: SSH username: vagrant
    default: SSH auth method: private key
    default: Warning: Connection timeout. Retrying...
    default: Warning: Connection timeout. Retrying...
```
You should open up the Virtualbox, click the vm running (name should be along the lines of 4cinc-thinkfasttoys....)
and reset it (on OSX it is cmd+t). This is due to some weird bug somewhere on intersection of vagrant, virtualbox and
this ubuntu cloud image.
After the initial virtual machine build, you will not need to use this.

## Deploying to remote servers

```
ansible-playbook -i provisioning/inventories/production provisioning/admin.yml -u ubuntu --sudo
```

[Vagrant]: http://www.vagrantup.com/downloads.html
[Ansible]: http://docs.ansible.com/intro_installation.html

## Documentation

For developer documentation see DOCS.md in this repo.
