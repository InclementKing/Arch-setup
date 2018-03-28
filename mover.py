import os

files = ['bashrc',  'xinitrc', 'Xresources']

for i in files:
	os.rename(os.path.expanduser('~/archSetup/configs/dotfiles/') + i, os.path.expanduser('~/.' + i))

os.mkdir(os.path.expanduser('~/.i3'))
os.mkdir(os.path.expanduser('~/.config/bscripts'))
os.rename(os.path.expanduser('~/archSetup/configs/i3config', os.path.expanduser('~/.i3/config'))
os.rename(os.path.expanduser('~/archSetup/configs/spotify.sh'), os.path.expanduser('~/.config/bscripts/spotify.sh'))
