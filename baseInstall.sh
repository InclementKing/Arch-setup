#!/bin/zsh
parted /dev/sda mklabel msdos
parted -a optimal /dev/sda mkpart primary 0% 100%
mkfs.ext4 /dev/sda1
mount /dev/sda1 /mnt
pacstrap /mnt base base-devel grub intel-ucode git
genfstab -L /mnt >> /mnt/etc/fstab
wget raw.githubusercontent.com/InclementKing/Arch-setup/master/chrooted.sh
mv chrooted.sh /mnt
clear
echo base install successful- now run bash chrooted.sh
arch-chroot /mnt
