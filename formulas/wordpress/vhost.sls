include:
  - wordpress

vhost:
  file.managed:
    - name: /etc/httpd/conf.d/wordpress.conf                     ### Location on the node 
    - template: jinja                                            ### specify that the file is jinja template
    - source: salt://httpd/config/vhost.conf                     ### salt:// = file_roots directory
    - require:
        - pkg: httpd
