mariadb:
  pkg.latest:
    - pkgs:
      - mariadb-server
      - mariadb
  service.running:
    - name: mariadb
    - enable: true
