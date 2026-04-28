Credits to [RedstoneRuler](https://github.com/RedstoneRuler) and [CaveJohnson](https://github.com/CaveJohnson376) for creating the original patch.

# Installing OneShot on Linux

If you are using a Linux-based operating system, the Steam version of OneShot will not work out of the box. You can use this small script to patch OneShot.

**Please update your system before attempting to patch OneShot.**


## Install git

To download this script and associated files, you'll need to install a program called git.
Install git using your distribution's native package manager.

###### Debian, Ubuntu, Mint, and derivatives
`sudo apt install git`

###### Arch, Manjaro, and derivatives
`sudo pacman -S git`

###### Fedora, and derivatives
`sudo dnf install git`

###### OpenSuse, and derivatives
`sudo zypper in git`


## Patch OneShot

 Download this repository and run the patch script.
```
  git clone https://github.com/xnkhi/oneshot_linux
  cd oneshot_linux
  chmod +x install
  ./install
```


## Notes

1. OneShot requires a proper floating desktop environment. Try either KDE Plasma or XFCE.
2. There is a stage in the game where you will need to run a certain "clover" app. At this stage, run the `onejournal` command in your terminal instead.
3. Use the Legacy runtime 1.0 as the specific Steam Play compatibility tool, and based on what distro you are using install qt5-tools (this is the package name for arch linux). You will need this to allow the game to change your wallpaper.
