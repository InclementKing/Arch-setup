#/bin/sh
count=`ps aux | grep -c Spotify`
if [ $count -eq 1 ]; then
	i3-msg "workspace 10; exec spotify"
else
	i3-msg "workspace 10"
fi