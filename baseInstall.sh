#!/bin/zsh
parted /dev/sda mklabel msdos
parted -a optimal /dev/sda mkpart primary 0% 100%
mkfs.ext4 /dev/sda1
mount /dev/sda1 /mnt
pacstrap /mnt base base-devel grub intel-ucode git xorg i3 nvidia deluge mosh openssh pavucontrol scrot ffmpeg virtualbox vlc xterm alsa-utils jre8-openjdk pulseaudio pulseaudio-alsa python python2 xorg-xinit dmenu
genfstab -L /mnt >> /mnt/etc/fstab
wget raw.githubusercontent.com/InclementKing/Arch-setup/master/chrooted.sh
wget raw.githubusercontent.com/InclementKing/Arch-setup/master/chrooted.py
mv chrooted.sh /mnt
mv chrooted.py /mnt
clear
echo base install successful- now run python chrooted.py
arch-chroot /mnt
echo 
echo after reboot, run bash systemSetup.sh
reboot