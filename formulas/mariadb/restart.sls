mariadb_restart:
  module.wait:
    - name: service.restart
    - m_name: mariadb
    - watch:
        - config
