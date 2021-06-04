# Path
export PATH="$PATH:$HOME/bin:$(find /home/ad/.local/bin -type d -printf %p:)/usr/bin:/usr/sbin:/usr/local/bin:/opt/:/usr/games/bin:/sbin"

#ruby
export GEM_HOME="$(ruby -e 'puts Gem.user_dir')"
export PATH="$PATH:$GEM_HOME/bin"

#java
export _JAVA_OPTIONS='-Dawt.useSystemAAFontSettings=on -Dswing.aatext=true -Dswing.defaultlaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel -Dswing.crossplatformlaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel'
export _JAVA_AWT_WM_NONREPARENTING=1

#clipmenu
export CM_LAUNCHER=/home/ad/.local/bin/rofi-clipmenu
export CM_DIR=/tmp


export TERMINAL='/usr/local/bin/st'
export EDITOR='nvim' 

export QT_QPA_PLATFORMTHEME=qt5ct

# vulkan 
export VK_ICD_FILENAMES=/usr/share/vulkan/icd.d/nvidia_icd.json
## ibus input change
##export GTK_IM_MODULE=ibus
##export QT_IM_MODULE=ibus
##export XMODIFIERS=@im=ibus
##ibus-daemon -drx


##export ZRAM_GENERATOR_ROO/
