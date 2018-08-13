beacons:
  inotify:
    - files:
{% if grains['os_family'] == 'RedHat' %}
        /etc/httpd/conf/httpd.conf:
{% endif %}
{% if grains['os_family'] == 'Debian' %}
        /etc/apache2/apache2.conf:
{% endif %}
          mask:
            - modify
    - disable_during_state_run: True



