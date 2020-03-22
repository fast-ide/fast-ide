# -*- mode: ruby -*-
# vi: set ft=ruby :

$script = <<-SCRIPT
sudo apt install docker.io -y
sudo docker pull fastide/ubuntu:18.04
sudo docker create -ti --name fastide fastide/ubuntu:18.04 bash
sudo docker cp fastide:/home/developer /home/
sudo useradd developer
echo "developer:developer" | sudo chpasswd
sudo chown -R developer /home/developer
sudo -u developer zsh -c "nvim +PlugInstall +qa"
SCRIPT

Vagrant.configure("2") do |config|

  config.vagrant.plugins = ["vagrant-vbguest", "vagrant-disksize"]

  config.vm.box = "peru/ubuntu-18.04-desktop-amd64"
  config.vm.network "public_network"
  config.disksize.size = "20GB"

  config.vm.provider "virtualbox" do |vb|
    vb.gui = true
    vb.memory = "2048"
  end

  config.vm.provision "shell", inline: $script, privileged: true

  config.ssh.extra_args = "-tt"
end
