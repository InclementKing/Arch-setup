#!/bin/zsh
parted /dev/sda mklabel msdos
parted -a optimal /dev/sda mkpart primary 0% 100%
mkfs.ext4 /dev/sda1
mount /dev/sda1 /mnt
pacstrap /mnt base base-devel grub intel-ucode rxvt-unicode playerctl git xorg i3 nvidia deluge mosh openssh pavucontrol telegram-desktop scrot ffmpeg vlc xterm alsa-utils jre8-openjdk pulseaudio pulseaudio-alsa python python2 xorg-xinit dmenu nvidia-settings
genfstab -L /mnt >> /mnt/etc/fstab
wget raw.githubusercontent.com/InclementKing/archSetup/master/chrooted.sh
mv chrooted.sh /mnt
clear
echo base install successful- now run bash chrooted.sh
arch-chroot /mnt
reboot
