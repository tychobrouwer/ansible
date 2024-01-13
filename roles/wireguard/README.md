Install and configure WireGuard
=========

This role installs and configures WireGuard and wg-dashboard for my server.

Role Variables
--------------

The ```role_dashboard_address``` variable is the internal IP address of the WireGuard server needed for wg-dashboard.

The ```role_dashboard_password``` variable is the password for the wg-dashboard web interface user.

The ```role_host_wireguard_address``` variable is the internal IP address of the wireguard server within the wireguard network.

The ```role_wireguard_peers``` variable is a list of dictionaries containing the public key and allowed IPs for each peer.

The ```role_wireguard_private_key``` variable can be set to the private key for the wireguard server. If this variable is not set, a new private key will be generated.

The ```role_dashboard_admin``` variable is the username for the wg-dashboard web interface admin user.

```role_dashboard_port``` can be set to change the port that wg-dashboard.

```role_wireguard_port``` can be set to change the port that wireguard listens on.

The ```role_interface_name``` variable can be set to change the name of the wireguard interface to create multiple wireguard interfaces.

```role_global_dns``` can be set to change the default DNS server filled in by wireguard dashboard.

Requirements
----------------

Needs Python3 and git to be installed.

Example Playbook
----------------

```yaml
    - hosts: servers
      vars:
        dashboard_address: 192.168.1.102
        dashboard_password: password123
        host_wireguard_address: 10.6.0.1/32
        wireguard_peers:
          - public_key: 1234567890
            allowed_ips: 10.6.0.2/32
          - public_key: 1234567890
            allowed_ips: 10.6.0.3/32

      roles:
         - { role: wireguard, role_dashboard_address: {{ dashboard_address }}, role_dashboard_password: {{ dashboard_password }},
             role_host_wireguard_address: {{ host_wireguard_address }}, role_wireguard_peers: {{ wireguard_peers }} }
         - { role: wireguard, role_dashboard_address: {{ dashboard_address }}, role_dashboard_password: {{ dashboard_password }},
             role_host_wireguard_address: {{ host_wireguard_address }}, role_wireguard_peers: {{ wireguard_peers }},
             role_dashboard_admin: "admin", role_wireguard_private_key: {{ wireguard_private_key }},
             role_dashboard_port: 10086, role_wireguard_port: 51820, role_interface_name: wg0, role_global_dns: 1.1.1.1 }
```

License
-------

BSD

Author Information
------------------

An optional section for the role authors to include contact information, or a website (HTML is not allowed).
