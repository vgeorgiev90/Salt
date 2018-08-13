set_hostname:
  salt.function:
    - name: cmd.run
    - tgt: 'minion1'
    - arg:
      - ls -la /root

run_apache:
  salt.state:
    - tgt: 'minion1'
    - highstate: True
