include:
  - httpd

add_user:
  user.present:
    - name: httpd-salt-user
    - shell: /bin/bash
    - home: /var/www/html
