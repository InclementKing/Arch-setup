import os

home = os.expanduser("~")
configs = home + '/archSetup/configs/'
dotfiles = configs + "dotfiles/"
files = os.listdir(dotfiles)

for file in files:
	os.renames(dotfiles + file, home + '/.' + file)

os.renames(configs + 'i3config', home + '/.i3/config')
os.renames(configs + 'spotify.sh', home + '/.config/bscripts/spotify.sh')
