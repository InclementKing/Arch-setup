import os

files = ['bashrc', 'gitconfig', 'xinitrc', 'Xresources']

for i in files:
	os.rename("/home/ben/arch-setup/config/dotfiles/" + i, "/home/ben/." + i)

os.mkdir("/home/ben/.13")
os.rename('/home/ben/arch-setup/config/i3config', '/home/ben/.i3/config')