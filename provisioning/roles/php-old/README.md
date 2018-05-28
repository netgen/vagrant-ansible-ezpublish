Role Name
=========

Setup PHP for the Symfony framework

Role Variables
--------------

Defaults that should be set as group/host variables:
PROJECT_ROOT: "/var/www"

Variables:
- use_php56 - should PHP 5.6 be installed, default is false
- use_xdebug - should XDebug be installed, default is false
- activate_xdebug - should XDebug be activated, default is false
- use_php5_fpm - should php-fpm be installed and used, default is true

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
    - { role: php, use_php56: true, use_xdebug: true, activate_xdebug: true }
```

Author Information
------------------

Created by Vranac Srdjan http://twitter.com/vranac
