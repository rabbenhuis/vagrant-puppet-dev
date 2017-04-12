include:
  - dotfiles.dircolors
  - dotfiles.bash
  - dotfiles.screen

dotfiles:
  require:
    - sls: dotfiles.dircolors
    - sls: dotfiles.bash
    - sls: dotfiles.screen
