Role Name
=========

Common role to setup the essential developer tools.

Requirements
------------

None.

Role Variables
--------------

- PROJECT_TIMEZONE variable should be set as group/host variables

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
    - common
```
Or using parameters:
```
---
- hosts: all
  become: yes
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