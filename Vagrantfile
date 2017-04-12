# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.hostname = "puppet.dev.local"
  config.vm.box      = "bento/centos-6.8"

  config.vm.provider :virtualbox do |vb|
    vb.name = "puppet.dev.local"
  end

  config.vm.provision :shell, :path => "provision.sh"
end
