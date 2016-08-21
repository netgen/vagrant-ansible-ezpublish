Role Name
=========

Download and install composer

Role Variables
--------------

Defaults that should be set as group/host variables:
PROJECT_ROOT: "/var/www"

Variables:
- use_composer_no_dev - should dev section in composer.json be used, default no

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
    - { role: composer, use_composer_no_dev: no }
```

Author Information
------------------

Created by Vranac Srdjan http://twitter.com/vranac