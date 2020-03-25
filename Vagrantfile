# -*- mode: ruby -*-
# vi: set ft=ruby :

$script = <<-SCRIPT
sudo apt install docker.io -y
sudo docker pull fastide/ubuntu:19.04
sudo docker create -ti --name fastide fastide/ubuntu:19.04 bash
sudo docker cp fastide:/home/developer /home/
sudo useradd developer
sudo usermod -aG sudo developer
echo "developer:developer" | sudo chpasswd
sudo chown -R developer /home/developer
SCRIPT

Vagrant.configure("2") do |config|

  config.vagrant.plugins = ["vagrant-vbguest", "vagrant-disksize"]

  config.vm.box = "chenhan/ubuntu-desktop-19.04"
  config.vm.network "public_network"
  config.disksize.size = "20GB"

  config.vm.provider "virtualbox" do |vb|
    vb.gui = true
    vb.memory = "2048"
  end

  config.vm.provision "shell", inline: $script, privileged: true

  config.ssh.extra_args = "-tt"
end
