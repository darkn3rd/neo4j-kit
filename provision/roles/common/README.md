Common
=========

This configures `/etc/hosts` and `/etc/ssh/ssh_config` for Vagrant systems.

Requirements
------------

For these scripts to work the following should have taken place:

- vagrant systems are running using Vagrant configuration (`Vagrantfile`).
- vagrant systems dynamic inventory (`./config/inventory.py`)

Both of these configurations will source `./config/${APP_ENV}.hosts` for the configuration.

Role Variables
--------------

No role variables are needed as the dynamic inventory settings (`./config/inventory.py`) are utilized.

Dependencies
------------

There are no dependencies other than [Virtualbox](https://www.virtualbox.org/wiki/Downloads) guest system using [Vagrant](https://www.vagrantup.com/) on the host system.  It shouldn't have to be mentioned that [Ansible](http://docs.ansible.com/ansible/intro_installation.html) should be installed.

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

```yaml
- hosts: all
  become: true
  roles:
    - common
```

License
-------

MIT

Author Information
------------------

Joaquin Menchaca
