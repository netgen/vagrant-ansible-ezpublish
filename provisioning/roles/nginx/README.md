Role Name
=========

nginx setup for symfony framework


Role Variables
--------------

Defaults that should be set as group/host variables:
- PROJECT_ROOT - determines the project root, will have "web" appended to it
- NGINX_SITES_ENABLED_CONFIG_PATH - location of the sites-enabled nginx directory
- NGINX_SITES_AVAILABLE_CONFIG_PATH - location of the sites-available nginx directory
- APPLICATION_ENVIRONMENT - should be obvious

Variables:
- name - name of the application that will be used as filename for website and for log names

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
    - { role: nginx, name: symfony }
```

Author Information
------------------

Created by Vranac Srdjan http://twitter.com/vranac