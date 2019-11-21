# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.box = "archlinux/archlinux"
  config.vm.synced_folder ".", "/tmp/vagrant", type: "rsync"
  config.vm.provision "shell", inline: <<-SHELL
    #pacman -Syu --noconfirm
    pacman -S --noconfirm wget parted dosfstools zip
	# Running Create Image script
	# bash /tmp/vagrant/create-image
	# zip rpi-archlinux.img.zip rpi-archlinux.img
    echo "Creating rpi-2-archlinux.img..."
    bash /tmp/vagrant/create-image rpi-2
    echo "Compressing rpi-2-archlinux.img..."
    xz -z rpi-2-archlinux.img -c > rpi-2-archlinux.img.xz
    zip rpi-2-archlinux.img.zip rpi-2-archlinux.img
    rm rpi-2-archlinux.img
    echo "Creating rpi-3-archlinux.img..."
    bash /tmp/vagrant/create-image rpi-3
    echo "Compressing rpi-3-archlinux.img..."
    xz -z rpi-3-archlinux.img -c > rpi-3-archlinux.img.xz
    zip rpi-3-archlinux.img.zip rpi-3-archlinux.img
    rm rpi-3-archlinux.img
    echo "Creating rpi-4-archlinux.img..."
    bash /tmp/vagrant/create-image rpi-4
    echo "Compressing rpi-4-archlinux.img..."
    xz -z rpi-4-archlinux.img -c > rpi-4-archlinux.img.xz
    zip rpi-4-archlinux.img.zip rpi-4-archlinux.img
    rm rpi-4-archlinux.img
  SHELL
end
