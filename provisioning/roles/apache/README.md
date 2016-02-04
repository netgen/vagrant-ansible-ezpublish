Role Name
=========

Role to setup the apache for the EzPublish.

Requirements
------------

None.

Role Variables
--------------

- PROJECT_ROOT - project root, defaults to "/var/www"
- APACHE_SITES_ENABLED_CONFIG_PATH - location of the apache sites-enabled dir, defaults to "/etc/apache2/sites-enabled"
- APACHE_SITES_AVAILABLE_CONFIG_PATH - location of the apache sites-available dir, defaults to "/etc/apache2/sites-available"
- IP_ADDRESS - ip address to be used in vhost, defaults to "*"
- PORT - port to be used in vhost, defaults to "80"
- HOST - host to be used in vhost, defaults to NONE 
- HOST_ALIAS - host alias to be used in vhost, defaults to NONE

- use_htaccess - Should .htaccess file be used for running eZ Publish web, defaults to false

- EZPUBLISH_ENVIRONMENT - Defines which environment will be used when running eZ Publish, defaults to "dev", applicable when use_htaccess == false
- EZPUBLISH_TRUSTED_PROXIES: Defines trusted proxies when running eZ Publish, defaults to "127.0.0.1", applicable when use_htaccess == false

Dependencies
------------

None.

Example Playbook
----------------

```
---
- hosts: all
  become: yes
  roles:
    - apache
```
Or using parameters:
```
---
- hosts: all
  become: yes
  roles:
    - { role: apache, name: symfony, use_htaccess: false }
```

Author Information
------------------

Created by Vranac Srdjan http://twitter.com/vranac
