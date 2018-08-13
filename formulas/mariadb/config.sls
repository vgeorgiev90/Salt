include:
  - mariadb

config:
  file.managed:
    - name: /etc/my.cnf
    - source: salt://mariadb/config/my.cnf
    - template: jinja
    - require:
        - pkg: mariadb

config_user_cnf:
  file.managed:
    - name: /root/.my.cnf
    - source: salt://mariadb/config/user-my.cnf
    - template: jinja
    - require:
        - pkg: mariadb
