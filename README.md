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

### Coc
Make sure node > 14 is installed

#### Haskell
Install ghcup and isntall ghc and the haskell language server:
```
curl --proto '=https' --tlsv1.2 -sSf https://get-ghcup.haskell.org | sh
```

### Markdown preview
To get this to work node.js and yarn needs to be installed.

## Tmux
Follow the following guide to install the tmux plugins

```
https://github.com/tmux-plugins/tpm#installing-plugins
```

## Ale
Make sure Black (python) and hlint (haskell) is installed:
```
pip install black
sudo apt install hlint
```

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
