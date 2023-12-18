# dotfiles
## Installation

## Git

[Fix auth](https://docs.github.com/en/get-started/getting-started-with-git/caching-your-github-credentials-in-git)

## NVIM

Based on [lazyvim](https://www.lazyvim.org/).

## Tmux
Follow the following guide to install the tmux plugins

[link](https://github.com/tmux-plugins/tpm#installing-plugins)


## Jetbrains font
[Jetbrains mono](https://www.jetbrains.com/lp/mono/#how-to-install)


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
