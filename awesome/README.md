# Awesome Window Manager 

```
git clone https://github.com/rishav-singh-0/my-linux-config
cd my-linux-config/awesome
mkdir ~/.config/awesome
cp -r ../awesome ~/.config/awesome

```

# Features

- Modularity
- Autohide widgets
- Autostart windowless processes
- Fast MPD and volume shortcuts (first time this trick has been used in Awesome)
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

## Theme: **Powerarrow Dark**

image:: http://dotshare.it/public/images/uploads/649.jpg

# Usage

Its totally formed modular structure

In ``rc.lua`` you can:
* set variables
* define startup processes
* change keybindings and layouts
* set client properties

In ``theme.lua`` you can:

* configure widgets
* define wiboxes and screen settings

Default software used:

   - dmenu chrome mpc mpd scrot unclutter xsel slock (Totally optional)