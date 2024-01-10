Upgrade packages
=========

The role upgrades all packages on the system. It can also clean and autoremove

Role Variables
--------------

If clean should be run on APT systems can be set with the ```role_clean``` variable.

If package autoremove should be run can be set with the ```role_autoremove``` variable.

Example Playbook
----------------

```yaml
    - hosts: all
      roles:
         - { role: upgrade_packages }
         - { role: upgrade_packages, role_clean: true, role_autoremove: true }
```

License
-------

BSD

Author Information
------------------

An optional section for the role authors to include contact information, or a website (HTML is not allowed).
