sonar
=====

[![Build Status](https://travis-ci.org/everproven/ansible-nexus.svg?branch=master)](https://travis-ci.org/everproven/ansible-nexus)
[![Ansible Galaxy](https://img.shields.io/badge/ansible--galaxy-everproven.nexus-blue.svg)](https://galaxy.ansible.com/everproven/nexus/)

An Ansible role that installs and configures [SonarQube] service on Linux.

Platforms
---------

Role tested on Linux operating systems:

* Ubuntu Server 16.04 LTS

Requirements
------------

[PostgreSQL]: It needs a PostgreSQL 8.x or greater configured to use UTF8 charset and its schema named "public".

Role Variables
--------------

__sonar_version__: The SonarQube version to install.

__Default__: 6.7.4

```YAML
sonar_version: 6.7.4
```

__sonar_secret_key__: The secret key to be used to remove clear passwords from settings. See <https://redirect.sonarsource.com/doc/settings-encryption.html>.

__Default__: ""

```YAML
sonar_secret_key: ""
```

__sonar_jdbc_username__: Database username.

__Default__: "sonar"

```YAML
sonar_jdbc_username: "sonar"
```

__sonar_jdbc_password__: Database password.

__Default__: "sonar"

```YAML
sonar_jdbc_password: "sonar"
```

__sonar_jdbc_url__: Database connection configuration.

__Default__: jdbc:postgresql://localhost/sonar

```YAML
sonar_jdbc_url: jdbc:postgresql://localhost/sonar
```

__sonar_web_host__: Binding IP address.

__Default__: 0.0.0.0

```YAML
sonar_web_host: 0.0.0.0
```

__sonar_web_port__: TCP port for incoming HTTP connections.

__Default__: 9000

```YAML
sonar_web_port: 9000
```

Dependencies
------------

[everproven.jdk]: Installs Oracle Java Development Kit 1.8.

Example Playbook
----------------

```YAML
- hosts: sonar
  become: True
  roles:
  - role: everproven.sonar
```

License
-------

[Apache License 2.0]

Author Information
------------------

[Ever Proven]

[SonarQube]: https://www.sonarqube.org/
[PostgreSQL]: https://www.postgresql.org/
[everproven.jdk]: https://galaxy.ansible.com/everproven/jdk/
[Apache License 2.0]: https://github.com/everproven/ansible-sonar/blob/master/LICENSE
[Ever Proven]: https://github.com/everproven