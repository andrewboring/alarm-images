# alarm-images
Arch Linux Arm Base Images for Raspberry Pi


This repository contains automated image builds of [Arch Linux ARM](https://archlinuxarm.org) for Raspberry Pi 2, 3, and 4.  

These are *not* official images from, nor are they supported by the [Arch Linux](https://www.archlinux.org) or [Arch Linux ARM](https://archlinuxarm.org) projects. They are provided by me, to you, as-is, with no warranty, blah blah blah.

Each image is built from [upstream tarballs](https://archlinuxarm.org/about/downloads) distributed by the Arch Linux ARM project, but written to a prepared 8GB image file. This image file can then be written to any SD Card 8GB+. The remaining space of the SD Card can be used as desired (expand partition and filesystem to fit, or create additional partitions).

## Background

Installing Arch Linux ARM to an SD Card is as simple as following their instructions. However, it's a manual process that gets tiresome when you need to test installation/setup/deployment scripts. Building an image is better, but the conventional entry point for MicroSD Cards these days is 32GB. Writing an image from a 32GB card takes too much space, and writing that 32GB back to card (even when most of the data is empty) is too time consuming. An 8GB base image is much better.

But building sparse images on macOS to create BIOS partitions, write Ext4 filesystems, and unpack Arch Linux ARM with bsdtar is...challenging, at best.

So, building on the work documented by [disconnected.systems](https://disconnected.systems) in [this blog post](https://disconnected.systems/blog/raspberry-pi-archlinuxarm-setup/) and [this other blog post](https://disconnected.systems/blog/custom-rpi-image-with-github-travis//), I now have a set of default images that are 8GB in size that I can quickly write [and customize] as needed. And since they're generic Arch Linux ARM builds with *nothing else* added, you can use them too.

Just download, burn, and boot!

## Releases
If you just want the downloads, head over to [Releases](https://github.com/andrewboring/alarm-images/releases) and get the appropriate one for your Raspberry Pi. Or select the latest version from the Files section below.

Then follow the standard instructions for your operating system to burn the image to your SD Card.


### Latest Files
- [rpi-2-archlinux.img.zip](https://github.com/andrewboring/alarm-images/releases/latest/download/rpi-2-archlinux.img.zip): For ARMv7, with the Raspberry Pi firmware. Also works on Raspberry Pi 3 series. Use this if you need VC4 stuff (like the GPU).
  - Upstream: https://archlinuxarm.org/platforms/armv7/broadcom/raspberry-pi-2

- [rpi-3-archlinux.img.zip](https://github.com/andrewboring/alarm-images/releases/latest/download/rpi-3-archlinux.img.zip): For ARMv8/Aarch64, with Uboot and Mainline Linux kernel. Almost full support for the board itself, but you get zero GPU. Experimental 64-bit Raspberry Pi firmware package is available, if you really want 64-bit and GPU.
  - Upstream: https://archlinuxarm.org/platforms/armv8/broadcom/raspberry-pi-3

- [rpi-4-archlinux.img.zip](https://github.com/andrewboring/alarm-images/releases/latest/download/rpi-3-archlinux.img.zip): Supplies ARMv7 kernel and RPi firmware, at the moment. Use RPI-3 above if you want aarch64 support.
  - Upstream: https://archlinuxarm.org/platforms/armv8/broadcom/raspberry-pi-4

[ to do: add more details on ARMv7 vs ARMv8 vs aarch32 vs aarch64 ]

### Update Frequency
The Arch Linux ARM projects releases updated tarballs, but not with the same frequency as Arch Linux. Therefore, these images may not be aligned with the latest tarball from Arch Linux ARM.

[ to do: add script to master control to check for upstream updates and trigger a new release on demand]

## Source
The source repo includes a Vagrant file to boot a default Arch Linux box, and launches a script to automatically download the tarballs and build the releases. You'll need [Vagrant](https://www.vagrantup.com) and [Virtualbox](https://virtualbox.org).

If you'd like to build a specific image yourself (eg, to change the image size or add additional software to the image), just edit the Vagrant file and comment out the shell stuff. The create-image file will be available in /tmp/vagrant for you to run manually to create a single image.

Once built, you'll need to copy the appropriate image out of the Vagrant box before deleting it.
