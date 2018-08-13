include:
  - mariadb

wordpress_database:
  mysql_database.present:
    - name: wordpress
    - host: localhost
    - connection_user: root
    - connection_pass: {{ pillar['mysql']['server']['password'] }}
    - connection_charset: utf8

wordpress_user:
  mysql_user.present:
    - name: wordpress
    - password: wordpress
    - host: localhost
    - connection_user: root
    - connection_pass: {{ pillar['mysql']['server']['password'] }}
    - connection_charset: utf8

wordpress_grants:
  mysql_grants.present:
    - database: wordpress.*
    - user: wordpress
    - grant: ALL PRIVILEGES
    - host: localhost
    - connection_user: root
    - connection_pass: {{ pillar['mysql']['server']['password'] }}
    - connection_charset: utf8
