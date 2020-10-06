/etc/network/interfaces:
  file.managed:
    - source: salt://spine-leaf/cumulus-l-01/interfaces.jinja
    - template: jinja
    - {{ pillar[salt['grains.get']('id')] }}

/etc/frr/frr.conf:
  file.managed:
    - source: salt://spine-leaf/cumulus-l-01/frr.jinja
    - template: jinja
    - {{ pillar[salt['grains.get']('id')] }}

'sudo ifreload -a':
  cmd.run

frr:
  service.running:
    - restart: True
    - watch:
      - file: /etc/frr/frr.conf
