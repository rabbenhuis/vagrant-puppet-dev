vagrant profile file:
  file.managed:
    - name: /home/vagrant/.profile
    - source: salt://dotfiles/bash/files/profile
    - user: vagrant
    - group: vagrant

vagrant bash_profile file:
  file.managed:
    - name: /home/vagrant/.bash_profile
    - source: salt://dotfiles/bash/files/bash_profile
    - user: vagrant
    - group: vagrant

vagrant bashrc file:
  file.managed:
    - name: /home/vagrant/.bashrc
    - source: salt://dotfiles/bash/files/bashrc
    - user: vagrant
    - group: vagrant

/home/vagrant/bin:
  file.directory:
    - user: vagrant
    - group: vagrant
    - mode: 755
    - makedirs: true

vagrant git-prompt shell script:
  file.managed:
    - name: /home/vagrant/bin/git-prompt.sh
    - source: salt://dotfiles/bash/scripts/git-prompt.sh
    - user: vagrant
    - group: vagrant

vagrant git-completion shell script:
  file.managed:
    - name: /home/vagrant/bin/git-completion.sh
    - source: salt://dotfiles/bash/scripts/git-completion.sh
    - user: vagrant
    - group: vagrant
