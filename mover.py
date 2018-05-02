import os

home = os.path.expanduser("~")
configs = home + '/archSetup/configs/'
dotfiles = configs + "dotfiles/"

files = os.listdir(dotfiles)
for file in files:
	newFile = home + '/.' + file
	os.renames(dotfiles + file, newFile)
	os.chmod(newFile, 0o777)

os.renames(configs + 'i3config', home + '/.i3/config')
os.renames(configs + 'spotify.sh', home + '/.config/bscripts/spotify.sh')
