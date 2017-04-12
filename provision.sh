#!/bin/bash

# Install salt
if ! [[ $(command -v salt-call) ]]; then
	echo "Install the SaltStack repository (latest)"
	yum install https://repo.saltstack.com/yum/redhat/salt-repo-latest-1.el6.noarch.rpm -y
	yum clean expire-cache
	yum install salt-minion -y
fi

# Install Extra Packages for Enterprise Linux (EPEL) repository
if ! [[ $(yum repolist | grep epel) ]]; then
	echo "Install Extra Packages for Enterprise Linux (EPEL)"
	yum --enablerepo=extras install epel-release -y
fi

# Let's roll it out
salt-call --local --config-dir=/vagrant/salt/config --file-root=/vagrant/salt/states --pillar-root=/vagrant/salt/pillar state.highstate
