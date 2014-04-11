# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  config.vm.box     = "centos-65-x64-vbox436"
  config.vm.box_url = "http://puppet-vagrant-boxes.puppetlabs.com/centos-65-x64-virtualbox-puppet.box"

  config.vm.network :public_network

  #Build Supervisor RPMs
  config.vm.provision :shell, :path => "build-supervisor-vagrant.sh"

end
