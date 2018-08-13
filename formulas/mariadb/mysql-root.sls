include:
  - mariadb
  - mariadb.mysql-python

mysql-root:
  mysql_user.present:
    - name: root
    - password: {{ pillar['mysql']['server']['password'] }}
    - host: localhost
