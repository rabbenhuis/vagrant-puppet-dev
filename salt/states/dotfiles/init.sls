include:
  - dotfiles.dircolors
  - dotfiles.bash
  - dotfiles.screen
  - dotfiles.vim

dotfiles:
  require:
    - sls: dotfiles.dircolors
    - sls: dotfiles.bash
    - sls: dotfiles.screen
    - sls: dotfiles.vim
