# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.box = "archlinux/archlinux"
  config.vm.synced_folder ".", "/tmp/vagrant", type: "rsync" 
  config.vm.provision "shell", inline: <<-SHELL
    pacman -Syu --noconfirm
    pacman -S --noconfirm wget parted dosfstools zip
	# Running Create Image script
	bash /tmp/create-image
  SHELL
end
