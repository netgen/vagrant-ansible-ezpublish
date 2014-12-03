Role Name
=========

Common role to setup the essential developer tools.

Requirements
------------

None.

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
    - common
```
Or using parameters:
```
---
- hosts: all
  sudo: yes
  roles:
    - { common: PROJECT_TIMEZONE: 'America/New_York'}
    - common:
        common_packages:
        - gcc
        - curl
```


Author Information
------------------

Created by Vranac Srdjan http://twitter.com/vranac