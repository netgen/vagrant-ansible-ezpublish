vagrant-ansible-ezpublish
=========================

Vagrant box, with Ansible provisioning to setup new eZ Publish project.

## Authors

- [Srdjan Vranac]
- [Dinko Korunic]
- [Edi Modric]

## Prerequisites

You need to be using either OSX or linux as your OS.

If you are using Windows, let me know so I can take a look how to setup the ansible-pull (and if it is possible)

You need to have following installed:
- [Vagrant]
- [Ansible]
- [VirtualBox]

If you are running windows, or have an ssd, copy `Vagrantfile-win-nfs` to `Vagrantfile`.

If you are on a NON-WINDOWS platform, WITHOUT SSD, copy `Vagrantfile-reverse-nfs` to `Vagrantfile`.

DO NOT COMMIT THE `Vagrantfile`.

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

***IMPORTANT***

If vagrant starts complaining about locale and crashes the provisioning, in
/etc/ssh/ssh_config (or equivalent) comment out
```
SendEnv LANG LC_*
```

## Windows Support

Shell script will run from within the vm to provision the setup

## Deploying to remote servers

```
ansible-playbook -i provisioning/inventories/production provisioning/production.yml -u ubuntu --sudo
```

[Vagrant]: http://www.vagrantup.com/downloads.html
[Ansible]: http://docs.ansible.com/intro_installation.html
[VirtualBox]: https://www.virtualbox.org/wiki/Downloads
[Srdjan Vranac]: https://github.com/vranac
[Dinko Korunic]: https://github.com/dkorunic
[Edi Modric]: https://github.com/emodric
