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

Dependencies
------------

None.

Example Playbook
----------------

```
---
- hosts: all
  sudo: yes
  roles:
    - apache
```
Or using parameters:
```
---
- hosts: all
  sudo: yes
  roles:
    - { role: apache, name: symfony }
```

Author Information
------------------

Created by Vranac Srdjan http://twitter.com/vranac