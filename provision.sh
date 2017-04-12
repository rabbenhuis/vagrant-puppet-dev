#!/bin/bash

# Install salt
if ! [[ $(command -v salt-call) ]]; then
	echo "Install the SaltStack repository (latest)"
	yum install https://repo.saltstack.com/yum/redhat/salt-repo-latest-1.el6.noarch.rpm -y
	yum clean expire-cache
	yum install salt-minion -y
fi
