#!/usr/bin/sh

#pkill -f "statusbar" ; /home/ad/.local/bin/statusbar  &
pkill -f "dwmblocks" ; setsid /usr/local/bin/dwmblocks &
pkill -f "dunst" ; dunst -config ~/.config/dunst/dunstrc &
pkill -f "bash /usr/bin/clipmenud"; pkill -f "clipnotify"; /usr/bin/clipmenud &
pkill -f "xcompmgr" ; xcompmgr -c -C -t-5 -l-5 -r4.2 -o.55 &
pkill -f "lowBatNotif" ; /home/ad/.local/bin/lowBatNotif &
pkill -f "lowBatHibernate" ; /home/ad/.local/bin/lowBatHibernate &
pkill -f /usr/lib/polkit-kde-authentication-agent-1;/usr/lib/polkit-kde-authentication-agent-1 &
mpd
#pkill -f "polybar" ; polybar -r dwm &
feh --bg-scale  /home/ad/Pictures/Wallpapers/GruvboxLines.png
redshift -PO 3500
xset dpms 150 &
pkill -f xss-lock ;xss-lock -- slock &
