user_ssh_key:
  ssh_auth.present:
    - user: vagrant
    - source: salt://ssh_keys/files/id_rsa.pub
    - config: '%h/.ssh/authorized_keys'
