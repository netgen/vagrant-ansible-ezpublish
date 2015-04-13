Role Name
=========

This role installs [Mailcatcher](http://www.mailcatcher.me).

Requirements
------------

Ruby installed.

Role Variables
--------------

This role has the following variables:
- MAILCATCHER_IP - the ip address for both smtp and http access, defaults to 0.0.0.0
- MAILCATCHER_SMTP_IP - the ip address for smtp access, defaults to 0.0.0.0
- MAILCATCHER_SMTP_PORT - the port for the smtp access, defaults to 1025
- MAILCATCHER_HTTP_IP - the ip address for the http access, defaults to 0.0.0.0
- MAILCATCHER_HTTP_PORT - the port for the http access, dfaults to 1080

These variables should be overriden as host or group variables.

Dependencies
------------

This role has no external dependencies.

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: servers
      roles:
         - { role: mailcatcher }

License
-------

BSD

Author Information
------------------

Created by Vranac Srdjan http://twitter.com/vranac
