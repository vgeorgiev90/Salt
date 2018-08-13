## Import map.jinja file for variables
{% from "httpd/map.jinja" import apache with context %}

httpd_install:
  pkg.installed:
#    {% if grains['os_family'] == 'RedHat' %}

    - name: {{ apache.package }}

#    {% elif grains['os_family'] == 'Debian' %}

    - name: {{ apache.package }}

#    {% endif %}
  service.running:
    - name: {{ apache.service }}
    - enable: true
