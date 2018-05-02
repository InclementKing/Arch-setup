mkdir ~/git
cd ~/git/
git clone https://aur.archlinux.org/package-query.git
cd package-query/
makepkg -si

cd ~/git/
git clone https://aur.archlinux.org/yaourt.git
cd yaourt/
makepkg -si

cd ~/
rm -rf ~/git/

yaourt --noconfirm -Sa google-chrome spotify wcalc pkgtools pulseaudio-ctl pulseaudio-equalizer plex-media-server ttf-fira-code
nvidia-settings --assign CurrentMetaMode="nvidia-auto-select +0+0 { ForceFullCompositionPipeline = On }"
cd ~/archSetup/
python mover.py
