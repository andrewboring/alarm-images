# alarm-images
Arch Linux Arm Base Images for Raspberry Pi


This repository contains automated image builds of Arch Linux ARM for Raspberry Pi 2, 3, and 4.  

Each image is built from upstream binaries distributed by the Arch Linux ARM project, but written to an 8GB image file. This image file can be written to any SD Card >8GB. The remaining space  of the SD Card can then be used as desired (expand partition to fit, or create additional partitions).

## Background
It's hard to buy small SD Cards these days. While you can still find 8GB and 16GB cards on the market, the conventional starting point is a 32 GB SD Card. While it's trivial to prepare and install ALArm on a SD Card, sometimes its nice to just have an image you can write over and over as needed.

I was doing a bunch of work for a client with an older version Arch Linux ARM that they had been imaging, and needed to test an upgrade script. Creating an image from their 32GB card wasted space on my laptop, and re-writing it every time I needed to boot clean was a four-hour job. I didn't have a duplicator at the time.

So, building on the work documented by disconnected.systems ([here](https://disconnected.systems/blog/raspberry-pi-archlinuxarm-setup/#cleaning-up) and [here](https://disconnected.systems/blog/raspberry-pi-archlinuxarm-setup/)) now I have a set of default images that are 8GB in size that I can write [and customize] as needed.
Just download, burn, and boot!

## Releases
If you just want the downloads, head over to Releases and get the appropriate one for your Raspberry Pi.
Then follow the standard instructions for your operating system to burn the image to your SD Card.

Or select the latest version from the Files section below.

RPI ()


### Files
- [rpi-2-archlinux.img.zip](https://github.com/andrewboring/alarm-images/releases/latest/download/rpi-2-archlinux.img.zip): For ARMv7, with the Raspberry Pi firmware. Also works on Raspberry Pi 3 series. Use this if you need VC4 stuff (like the GPU).
Upstream: https://archlinuxarm.org/platforms/armv7/broadcom/raspberry-pi-2

- [rpi-3-archlinux.img.zip](https://github.com/andrewboring/alarm-images/releases/latest/download/rpi-3-archlinux.img.zip): For ARMv8/Aarch64, with Uboot and Mainline Linux kernel. Almost full support for the board itself, but you get zero GPU. Experimental 64-bit Raspberry Pi firmware package is available, if you really want 64-bit and GPU.

Upstream: https://archlinuxarm.org/platforms/armv8/broadcom/raspberry-pi-3

[rpi-4-archlinux.img.zip](https://github.com/andrewboring/alarm-images/releases/latest/download/rpi-3-archlinux.img.zip): Supplies ARMv7 kernel and RPi firmware, at the moment. Use RPI-3 above if you want aarch64 support.

[ to do: add more details on ARMv7 vs ARMv8 vs aarch32 vs aarch64 ]

## Source
The source includes a Vagrant file to boot Arch Linux, which then automatically downloads and builds the three releases. You'll need [Vagrant](https://www.vagrantup.com) and [Virtualbox](https://virtualbox.org).

If you'd like to build these yourself (eg, to change the image size or add additional software to the image), just edit the Vagrant file and comment out the shell stuff. The create-image file will be available in /tmp/vagrant for you to run manually, to create a single image. Use pacstrap to install additional packages into your image before unmounting and compressing.

[ to do: add instructions for customizing images, linking to ArchWiki and other resources ]

Once built, you'll need to copy the appropriate image out of the Vagrant box before deleting it.
