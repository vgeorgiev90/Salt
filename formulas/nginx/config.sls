{% from "nginx/map.jinja" import nginx with context %}

nginx_configuration:
  file.managed:
    - name: {{ nginx.config }}
    - source: {{ nginx.configsource }}
    - template: jinja
    - require:
      - pkg: {{ nginx.package }}

