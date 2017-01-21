Neo4j
=========

This installs Neo4j 3.1.1 on Ubuntu 14.04 Linux system.

Requirements
------------

Neo4j requires Java, so Oracle Java 8 is installed.

Role Variables
--------------

- `package_name`: name of package, `neo4j` or `neo4j-enterprise`
- `package_version`: version of package, `3.1`, `3.1.1`, etc.

Dependencies
------------

- oracle-java

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

```yaml
- hosts: neo4j.dev
  vars:
    version: 3.1.1
    name: neo4j
  gather_facts: yes
  become: true
  roles:
    - role: neo4j
      package_name: "{{ name }}"
      package_version: "{{ version }}"
```

License
-------

MIT

Author Information
------------------

Joaquín Menchaca
