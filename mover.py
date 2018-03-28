import os

configs = os.path.expanduser('~/archSetup/configs/')
files = ['bashrc',  'xinitrc', 'Xresources']

for i in files:
	os.renames(configs + 'dotfiles/' + i, os.path.expanduser('~/.' + i))

os.renames(configs + 'i3config', os.path.expanduser('~/.i3/config'))
os.renames(configs + 'spotify.sh', os.path.expanduser('~/.config/bscripts/spotify.sh'))
