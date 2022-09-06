#!/bin/bash
##############################################################
#                     gnome-shell settings                   #
#                                                            #
#                                                            #
#                                                            #
#                                                            #
##############################################################


# gnome settings editors
#gnome-tweaks

#gnome-shell-extension-prefs

#dconf-editor

# set gnome settings to default
# RESET
dconf reset -f /org/gnome/

# disable terminal alert sound
gsettings set org.gnome.desktop.sound event-sounds false

#klawiatura (region i jezyk)
gsettings set org.gnome.desktop.input-sources  sources '[("xkb", "pl"), ("xkb", "de+qwerty")]'

# Keybings
#for i in `gsettings list-keys org.gnome.desktop.wm.keybindings `;do echo -n "$i "; gsettings get org.gnome.desktop.wm.keybindings $i;done|grep -i terminal

# mouse
#gsettings set org.gnome.desktop.interface text-scaling-factor 1.3
gsettings set org.gnome.desktop.interface cursor-size 80

# top bar
gsettings set org.gnome.desktop.wm.preferences button-layout 'appmenu:minimize,maximize,close'
gsettings set org.gnome.desktop.interface clock-show-date true

# background
#sudo dnf install heisenbug-backgrounds-gnome
gsettings set org.gnome.desktop.background picture-uri 'file:///usr/share/backgrounds/heisenbug/extras/green-grass.jpg'
gsettings set org.gnome.desktop.screensaver picture-uri 'file:///usr/share/backgrounds/heisenbug/extras/under-a-bridge.jpg'

# nautilus
gsettings set org.gtk.Settings.FileChooser sort-directories-first true
gsettings set org.gnome.nautilus.window-state maximized true
gsettings set org.gnome.nautilus.preferences default-folder-viewer 'list-view'
gsettings set org.gnome.desktop.interface icon-theme 'HighContrast'
gsettings set org.gtk.Settings.FileChooser show-hidden true

#dash-to-dock
# activate
gsettings set org.gnome.shell enabled-extensions "['dash-to-dock@micxgx.gmail.com', 'background-logo@fedorahosted.org', 'sound-output-device-chooser@kgshank.net']"
# sound device chooser
gsettings set org.gnome.shell.extensions.sound-output-device-chooser hide-on-single-device true
gsettings set org.gnome.shell.extensions.sound-output-device-chooser integrate-with-slider true
#volume above 100%
gsettings set org.gnome.desktop.sound allow-volume-above-100-percent true
gsettings set org.gnome.desktop.interface clock-show-seconds true
# position
gsettings set org.gnome.shell.extensions.dash-to-dock dock-position BOTTOM
#￼szeroki pasek
gsettings set org.gnome.shell.extensions.dash-to-dock extend-height true
# przycisk aplikacji po lewej
gsettings set org.gnome.shell.extensions.dash-to-dock show-apps-at-top true
#brak chowania sie
gsettings set org.gnome.shell.extensions.dash-to-dock dock-fixed true
#isolate workspaces
gsettings set org.gnome.shell.extensions.dash-to-dock isolate-workspaces true
# dash-to-dock color
gsettings set org.gnome.shell.extensions.dash-to-dock custom-background-color true
#gsettings set org.gnome.shell.extensions.dash-to-dock background-color '#114100'
gsettings set org.gnome.shell.extensions.dash-to-dock background-color '#000000'
# always on top
gsettings set org.gnome.shell.extensions.dash-to-dock require-pressure-to-show false
# 
gsettings set org.gnome.shell.extensions.dash-to-dock transparency-mode FIXED
# 
gsettings set org.gnome.shell.extensions.dash-to-dock unity-backlit-items true
# icon size
gsettings set org.gnome.shell.extensions.dash-to-dock dash-max-icon-size 32
# fafourite apps
gsettings set org.gnome.shell favorite-apps "['start_wygaszacz.desktop', 'stop_wygaszacz.desktop', 'brave-browser.desktop', 'org.gnome.Nautilus.desktop', 'org.gnome.Terminal.desktop', 'keybase.desktop', 'pidgin.desktop']"

# TERMINAL
profile=`gsettings get org.gnome.Terminal.ProfilesList default`
profile=${profile:1:-1}
gsettings set "org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$profile/" font 'Monospace 36'
gsettings set "org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$profile/" use-system-font false
gsettings set "org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$profile/" use-theme-colors false
gsettings set "org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$profile/" background-color 'rgb(0,0,0)'
gsettings set "org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$profile/" foreground-color 'rgb(255,255,255)'

# gnome-system-monitor
gsettings set org.gnome.gnome-system-monitor.proctree sort-col 8

#shortcuts
#volume
gsettings set org.gnome.settings-daemon.plugins.media-keys volume-down "['<Primary><Shift>Left']"
gsettings set org.gnome.settings-daemon.plugins.media-keys volume-up "['<Primary><Shift>Right']"
gsettings set org.gnome.settings-daemon.plugins.media-keys volume-mute "['<Primary><Shift>Down']"


#switch applications
gsettings set org.gnome.desktop.wm.keybindings switch-applications "@as []"
gsettings set org.gnome.desktop.wm.keybindings switch-windows "['<Alt>Tab']"

#zoom shortcut and settings
gsettings set org.gnome.settings-daemon.plugins.media-keys  magnifier "['<Alt>q']"
gsettings set org.gnome.desktop.a11y.magnifier mag-factor 4.0
gsettings set org.gnome.desktop.a11y always-show-universal-access-status true
gsettings set org.gnome.desktop.a11y.magnifier show-cross-hairs true
gsettings set org.gnome.desktop.a11y.magnifier cross-hairs-length 20

#custom shortcuts
# 
gsettings set org.gnome.settings-daemon.plugins.media-keys custom-keybindings "[
'/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/',
'/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1/',
'/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom2/',
'/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom3/',
'/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom4/',
'/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom6/',
'/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom10/',
'/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom11/', 
'/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom12/', 
'/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom13/',
'/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom14/',
'/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom15/'
]"

# terminal
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ name 'terminal'
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ binding '<Alt>w'
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ command 'gnome-terminal'
# brave
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1/ name 'brave-browser'
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1/ binding '<Alt>e'
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1/ command 'brave-browser'
# libreoffice writer
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom2/ name 'libreoffice-writer'
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom2/ binding '<Alt>1'
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom2/ command '/usr/lib64/libreoffice/program/oosplash --writer'
# nautilus 
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom3/ name 'przekladarka plikow'
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom3/ binding '<Alt>p'
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom3/ command 'nautilus'
# power off
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom4/ name 'shutdown'
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom4/ binding '<Primary><Shift><Alt>q'
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom4/ command 'shutdown -h now'
# task manager (gnome-system-monitor)
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom6/ name 'system-monitor'
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom6/ binding '<Primary><Shift>Escape'
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom6/ command 'gnome-system-monitor'
# libreoffice math
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom7/ name 'libreoffice-math'
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom7/ binding '<Alt>2'
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom7/ command '/usr/lib64/libreoffice/program/oosplash --math'

# use old good screenshotting system:
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom10/ name 'Screenshot to clipboard'
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom10/ binding '<Primary>Print'
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom10/ command 'gnome-screenshot --clipboard'

gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom11/ name 'Screenshot of area'
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom11/ binding '<Shift>Print'
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom11/ command 'gnome-screenshot --area'

gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom12/ name 'Screenshot of area to clipboard'
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom12/ binding '<Primary><Shift>Print'
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom12/ command 'gnome-screenshot --clipboard --area'

gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom13/ name 'Screenshot of window'
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom13/ binding '<Alt>Print'
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom13/ command 'gnome-screenshot --window'

gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom14/ name 'Screenshot of window'
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom14/ binding '<Alt>Print'
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom14/ command 'gnome-screenshot --window'

gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom14/ name 'Screenshot of window'
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom14/ binding '<Shift><Alt>Print'
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom14/ command 'gnome-screenshot --clipboard --window'

#pasek - ciag dalszy
# transparency dynamic
gsettings set org.gnome.shell.extensions.dash-to-dock transparency-mode 'DYNAMIC'
gsettings set org.gnome.shell.extensions.dash-to-dock customize-alphas true
gsettings set org.gnome.shell.extensions.dash-to-dock max-alpha 1.0
gsettings set org.gnome.shell.extensions.dash-to-dock min-alpha 0.0
# sweech workspaces - scroll action
gsettings set org.gnome.shell.extensions.dash-to-dock scroll-action 'switch-workspace'

#logo - penguin
gsettings set org.fedorahosted.background-logo-extension logo-position "bottom-center"
gsettings set org.fedorahosted.background-logo-extension logo-size 9.0
gsettings set org.fedorahosted.background-logo-extension logo-always-visible true
gsettings set org.fedorahosted.background-logo-extension logo-border "uint32 16"
gsettings set org.fedorahosted.background-logo-extension logo-file "/home/mszeptuch/Pictures/Linux.png"
gsettings set org.fedorahosted.background-logo-extension logo-opacity "uint32 255"

#evolution
#gsettings set org.gnome.evolution.window maximized true
gsettings set org.gnome.evolution.mail paned-size 1554579

#ikony aplikacji
# gsettings set org.gnome.shell app-picker-view "uint32 1"

# high contrast
gsettings set org.gnome.desktop.interface gtk-theme 'HighContrast'
gsettings set org.gnome.desktop.a11y.interface high-contrast true

# screencast
# TODO
#gsettings set org.gnome.settings-daemon.plugins.media-keys max-screencast-length 600
