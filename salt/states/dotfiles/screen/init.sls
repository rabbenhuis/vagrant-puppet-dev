vagrant screenrc file:
  file.managed:
    - name: /home/vagrant/.screenrc
    - source: salt://dotfiles/screen/files/screenrc
    - user: vagrant
    - group: vagrant

