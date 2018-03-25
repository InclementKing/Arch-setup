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

yaourt --noconfirm -S google-chrome spotify pkgtools pulseaudio-ctl pulseaudio-equalizer
nvidia-settings --assign CurrentMetaMode="nvidia-auto-select +0+0 { ForceFullCompositionPipeline = On }"
python mover.py