Role Name
=========

mysql setup


Role Variables
--------------

Defaults that should be set as group/host variables:
- USERNAME - determines the username for the db access, default is dev
- PASSWORD - determines the password for the db access, default is null
- DB_NAME - determines the database name, default is dev

Variables:
- use_mysql56 - should mysql 5.6 be used or not, default is false
- use_mysql_dev - should mysql be tuned for development (light memory use) or production

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
    - { role: nginx, name: symfony }
```

Author Information
------------------

Created by Vranac Srdjan http://twitter.com/vranac
