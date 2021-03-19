#!/bin/sh

# # Light - Brightness Control
# sudo chgrp video /sys/class/backlight/*/brightness
# sudo chmod 664 /sys/class/backlight/*/brightness
# sudo usermod -a -G video $USER

# Trackpad - Touch to click, Natural Scrollng, Disable while typing, Accleratin
# xinput list
# xinput list-list $id
xinput set-prop "ELAN1300:00 04F3:3057 Touchpad" "libinput Tapping Enabled" "1"
xinput set-prop "ELAN1300:00 04F3:3057 Touchpad" "libinput Natural Scrolling Enabled" "1"
xinput set-prop "ELAN1300:00 04F3:3057 Touchpad" "libinput Disable While Typing Enabled" "0"
xinput set-prop "ELAN1300:00 04F3:3057 Touchpad" "libinput Accel Speed" "0.2"

# Change System76 drivers
# sudo system76-power graphics intel

# Make bootable pendrive
# dd bs=4M if=/path/to/input.iso of=/dev/sd<?> conv=fdatasync status=progress
