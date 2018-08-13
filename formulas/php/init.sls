php_repo_install:
  pkg.latest:
    - pkgs:
      - epel-release
  cmd.run:  
    - name: yum install -y http://rpms.remirepo.net/enterprise/remi-release-7.rpm
