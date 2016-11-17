Installing eZ Platform
======================

You have two options for trying out eZ Platform and you also need to figure out the latest release tag on GitHub:

* Clean - [the latest release](https://github.com/ezsystems/ezplatform/releases/latest)
* With demo content and design - [the latest release](https://github.com/ezsystems/ezplatform-demo/releases/latest)

For example, we will be using the `v1.4.0` tag. We recommend using the tagged releases, not `dev-master`, as they should be more stable and it is easier to seek help afterward.

## Step by step install procedure

1. Clone this repo:

    `git clone https://github.com/netgen/vagrant-ansible-ezpublish.git && cd vagrant-ansible-ezpublish`

2. Choose the version of the Vagrantfile (nfs or reverse-nfs), for example:

    `cp Vagrantfile-nfs Vagrantfile`

3. Boot up and provision the box with:

    `vagrant up`

4. Log in to the box with:

    `vagrant ssh`

5. Remove the .gitkeep file:

    `rm .gitkeep`

6. Clone eZ Platform, clean or demo (mind the dot at the end of commands):

    `git clone --branch v1.6.0.1 https://github.com/ezsystems/ezplatform.git .`

    or

    `git clone --branch v1.6.0 https://github.com/ezsystems/ezplatform-demo.git .`

7. Run Composer:

    `composer install --no-dev`

8. Run installation command (for demo install use `demo` instead of `clean` option in installer):

    `php app/console --env=prod ezplatform:install clean`

9. Run:

    `php app/console --env=prod assetic:dump`

10. Go to browser and enter http://172.21.12.10/  (frontend) and http://172.21.12.10/ez (backend with user `admin` and pass `publish`)
