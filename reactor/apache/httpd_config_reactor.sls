restore_httpd_config_file:
  local.state.single:
    - tgt: 'minion1'
    - args:
        - fun: file.managed
        - name: /etc/httpd/conf/httpd.conf
        - source: salt://httpd/config/httpd.conf
