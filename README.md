# dotfiles
## Installation

## Git

[Fix auth](https://docs.github.com/en/get-started/getting-started-with-git/caching-your-github-credentials-in-git)

## NVIM

Based on [lazyvim](https://www.lazyvim.org/).

### Clangd

If clangd gives errors about standard headers: [stackoverflow link](https://stackoverflow.com/questions/74785927/clangd-doesnt-recognize-standard-headers)

## Tmux
Follow the following guide to install the tmux plugins

[link](https://github.com/tmux-plugins/tpm#installing-plugins)


## Jetbrains font
[Jetbrains mono (Nerd)](https://www.nerdfonts.com/font-downloads)

Unzip the file somewhere

`sudo mkdir /usr/share/fonts/truetype/jetbrains-mono`

`sudo mv jetbrains-mono/fonts/ttf/*.ttf /usr/share/fonts/truetype/jetbrains-mono`

`fc-cache -f -v`

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
