vagrant dir_colors file:
  file.managed:
    - name: /home/vagrant/.dir_colors
    - source: salt://dotfiles/dircolors/files/solarized.256dark
    - user: vagrant
    - group: vagrant

