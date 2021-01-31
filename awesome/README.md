# Awesome Window Manager 
![Powerarrow Dark](https://github.com/rishav-singh-0/my-linux-config/blob/main/screenshots/Screenshot%20from%202021-01-31%2011-24-24.jpg?raw=true)

## Recommended / Dependencies
```
sudo apt install awesome suckless-tools compton
```

## Installation / Configuration
```
git clone https://github.com/rishav-singh-0/my-linux-config
cd my-linux-config/awesome
mkdir ~/.config/awesome
cp -r ../awesome ~/.config/

```

## Features

- Modularity
- Autohide widgets
- Fast brightness and volume shortcuts 
- Shortcuts for copying to the clipboard, toggle wiboxes, widgets popups, screenshots capture, moving and magnifying clients
- Quake drop-down terminal(optional)
- Calendar with current day highlighted and months switch with a click/scroll
- Notifications for new mails, current song, volume level, hdd critical state, low battery
- Net carrier status notifier
- Symbolic tag names
- DWM-like textual layoutbox
- Custom layouts
- No borders when there's only one visible client
- Freedesktop.org compliant menu and desktop icons
- Vi-like client focus
- Non-empty tag browsing
- On-the-fly useless gaps resize
- Dynamic tagging

## Default software used:
These are the applications i have used and most of em are preinstalled on any popular linux distro ofcource you can change any of it and dont use any if you want
   - **dmenu** for launching applications
   - **chrome** for browsing internet
   - **nautilus** for file browsing
   - **mpc & alsa** for sound
   - **slock** for screenlocking 
   - **alacritty** as terminal

## Usage

Its totally formed modular structure

In ``rc.lua`` you can:
* set variables
* define startup processes
* change keybindings and layouts
* set client properties

In ``theme.lua`` you can:

* configure widgets
* define wiboxes and screen settings


