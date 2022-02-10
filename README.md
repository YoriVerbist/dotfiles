# dotfiles
## Installation
#### Still work in progress!!!
```
sudo apt install git
git clone https://github.com/YoriVerbist/dotfiles.git
cd dotfiles
sudo bash install.sh
```

## NVIM

### YouCompleteMe
```
git clone https://github.com/ycm-core/YouCompleteMe.git
Python install.py --all
```

### Markdown preview
To get this to work node.js and yarn needs to be installed.

## Tmux
Follow the following guide to install the tmux plugins

```
https://github.com/tmux-plugins/tpm#installing-plugins
```


## Laptop
### Fix natural scrolling
Edit `/usr/share/X11/xorg.conf.d/40-libinput.conf`

Mouse Scrolling:
```
Section "InputClass"
        Identifier "libinput pointer catchall"
        MatchIsPointer "on"
        MatchDevicePath "/dev/input/event*"
        Driver "libinput"
        Option "NaturalScrolling" "True"
EndSection
```

For the touchpad:
```
Section "InputClass"
        Identifier "libinput touchpad catchall"
        MatchIsTouchpad "on"
        MatchDevicePath "/dev/input/event*"
        Driver "libinput"
        Option "NaturalScrolling" "True"
EndSection
```
