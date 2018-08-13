include:
  - php

php-fpm:
  pkg.latest:
    - pkgs:
      - php70-php-fpm
      - php70-php-mysqlnd
      - php70-php-gd

  cmd.run:
    - name: | 
        sed -i 's/listen = 127.0.0.1:9000/listen = \/var\/run\/php70-fpm.sock/' /etc/opt/remi/php70/php-fpm.d/www.conf
        sed -i 's/;listen.owner = nobody/listen.owner = apache/' /etc/opt/remi/php70/php-fpm.d/www.conf
        sed -i 's/;listen.group = nobody/listen.group = apache/' /etc/opt/remi/php70/php-fpm.d/www.conf
        sed -i 's/;listen.mode = 0660/listen.mode = 0660/' /etc/opt/remi/php70/php-fpm.d/www.conf

  service.running:
    - name: php70-php-fpm
    - enable: true
