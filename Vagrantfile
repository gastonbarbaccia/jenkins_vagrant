# -*- mode: ruby -*-
# vi: set ft-ruby :

Vagrant.configure("2") do |config|
       config.vm.box = "ubuntu/bionic64"
       config.vm.hostname = "master"
       config.vm.define "master"
       config.vm.network "public_network"   #Esto solo para linux
  # config.vm.network "private_network", ip: "192.168.33.13"  #Esto es solo para windows
  
       config.vm.provider "virtualbox" do |v|
        v.name = "master"
        v.memory = "4096"
        v.cpus = 4
       end
       config.vm.provision "shell" do |s|
        s.path = 'jenkins.sh'
       end
end