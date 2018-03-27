import os

files = ['bashrc',  'xinitrc', 'Xresources']

for i in files:
	os.rename(os.path.expanduser'~/arch-setup/configs/dotfiles/' + i, os.path.expanduser'~/.' + i)

os.mkdir(os.path.expanduser'~/.i3')
os.mkdir(os.path.expanduser'~/.config/bscripts')
os.rename(os.path.expanduser'~/arch-setup/configs/i3config', os.path.expanduser'~/.i3/config')
os.rename(os.path.expanduser'~/.config/bscripts/spotify.sh)
