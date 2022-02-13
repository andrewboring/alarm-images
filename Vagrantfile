# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.box = "archlinux/archlinux"
  config.vm.synced_folder "scripts", "/home/vagrant/scripts"
  config.ssh.username = "vagrant"
  config.ssh.insert_key = false
  config.vm.provision "shell", inline: <<-SHELL
	#pacman-key --init
    #pacman-key --populate archlinuxarm
    #pacman -Syu --noconfirm
    pacman -S --noconfirm wget parted dosfstools zip vi git base-devel 
    #git clone https://aur.archlinux.org/qemu-user-static.git
    #git clone
    #git clone

    #cd pcre-static
    #gpg --recv-keys 9766E084FB0F43D8

    #cd qemu-user-static
    #gpg --recv-keys CEACC9E15534EBABB82D3FA03353C9CEF108B584
    #makepkg -s

  SHELL
end
