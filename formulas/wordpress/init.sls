wordpress:
  cmd.run:
    - name: | 
        wget http://wordpress.org/latest.tar.gz -P /root/
        tar -xzf /root/latest.tar.gz
        cp -R /root/wordpress/* /var/www/html
        cp /var/www/html/wp-config-sample.php /var/www/html/wp-config.php
        chown -R apache:apache /var/www/html
