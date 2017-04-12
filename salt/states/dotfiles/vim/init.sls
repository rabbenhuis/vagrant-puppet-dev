vagrant vimrc file:
  file.managed:
    - name: /home/vagrant/.vimrc
    - source: salt://dotfiles/vim/files/vimrc
    - user: vagrant
    - group: vagrant

/home/vagrant/.vim/bundle:
  file.directory:
    - user: vagrant
    - group: vagrant
    - mode: 755
    - makedirs: true


vagrant copy vim bundles:
  file.recurse:
    - name: /home/vagrant/.vim/bundle
    - source: salt://dotfiles/vim/bundle
    - makedirs: True
    - exclude_pat: E@\.git
    - user: vagrant
    - group: vagrant
