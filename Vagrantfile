# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  config.vm.box     = "centos-65-x64-vbox436"
  config.vm.box_url = "http://puppet-vagrant-boxes.puppetlabs.com/centos-65-x64-virtualbox-puppet.box"

  #config.vm.network :forwarded_port, guest: 80, host: 80
  config.vm.network :public_network

  #Build the custom version of Nginx 
  config.vm.provision :shell, :path => "build-supervisor.sh"

  config.vm.provider :virtualbox do |vb|
    vb.customize ["modifyvm", :id, "--cpus", "1"]
    vb.customize ["modifyvm", :id, "--memory", "2048"]
  end

end
