Install and configure NordVPN
=========

A brief description of the role goes here.

Role Variables
--------------

The ```role_nordvpn_username``` needs to be set to your NordVPN service username and ```role_nordvpn_password``` needs to be set to your NordVPN service password.

The ```role_nordvpn_server``` variable can be set to the NordVPN server you want to connect to. A list of servers can be found here:

<https://nordvpn.com/ovpn/>

Example Playbook
----------------

```yaml
    - hosts: servers
      roles:
         - { role: nordvpn, role_nordvpn_username: {{ nordvpn_username }}, role_nordvpn_password: {{ nordvpn_password }},
             role_nordvpn_server: us10036.nordvpn.com.udp1194 }
```

License
-------

BSD

Author Information
------------------

An optional section for the role authors to include contact information, or a website (HTML is not allowed).
