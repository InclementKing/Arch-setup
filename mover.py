import os

files = ['bashrc', 'gitconfig', 'xinitrc', 'Xresources']

for i in files:
	os.rename("/home/ben/arch-setup/configs/dotfiles/" + i, "/home/ben/." + i)

os.mkdir("/home/ben/.13")
os.rename('/home/ben/arch-setup/configs/i3config', '/home/ben/.i3/config')