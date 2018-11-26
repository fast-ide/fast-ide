# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  config.vm.box = "ubuntu/bionic64"
  config.vm.network "public_network"
  config.disksize.size = "20GB"

  config.vm.provider "virtualbox" do |vb|

    vb.gui = true
    vb.memory = "2048"
    # vb.customize ["storageattach", :id, 
    #               "--storagectl", "IDE", 
    #               "--port", "0", "--device", "1", 
    #               "--type", "dvddrive", 
    #               "--medium", "emptydrive"]
  end

  config.vm.provision "file", source: "configs", destination: "configs"
  config.vm.provision "shell", path: "install.sh"
  config.vm.provision "shell", path: "bootstrap.sh", privileged: false
  config.vm.provision "shell", path: "theme.sh", privileged: false
end
