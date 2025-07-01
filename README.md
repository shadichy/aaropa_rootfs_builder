# Ānanda Āropa RootFS builder image 

## Introduction

Ānanda Āropa (/ɑːˈnʌndə/ /ɑː.ɾɐw.pɐ/) or `aaropa` is BlissLabs' latest attempt in improving the installer & initrd for BlissOS, with some of additional features & improvements over the original Android-x86 console installer.

This repo produces build image with full dependencies, capable of building Linux packages and Android

The rootfs also include programs such as:

- [JWM](https://github.com/joewing/jwm) for the desktop
- [PCManFM-Qt](https://github.com/lxqt/pcmanfm-qt) for file manager
- [QTerminal](https://github.com/lxqt/qterminal) for terminal
- [GParted](https://gparted.org/) for disks & partitions management
- [L3afpad](https://github.com/stevenhoneyman/l3afpad) for text editor
- [GPicView](https://lxde.sourceforge.net/gpicview/) for photo viewer
- [GSmartControl](https://gsmartcontrol.shaduri.dev/) for drive health monitor
- [Htop](https://github.com/htop-dev/htop) for process monitor

## Compatibility

As of right now, `aaropa` only supports `x86_64`.

## Status

Beside this main repo, `aaropa` is also made of several other repos including:

- [![](https://github.com/BlissOS/aaropa_calamares/actions/workflows/build-devuan-ceres.yml/badge.svg)](https://github.com/BlissOS/aaropa_calamares) <p>
This repo contains patches & modules for Calamares which will be built into .deb file

- ![https://github.com/BlissOS/grub2-themes](https://github.com/BlissOS/grub2-themes/actions/workflows/build-devuan-ceres.yml/badge.svg) <p>
This repo contains the Grub2 theme that we're using which will be built into .deb file

- [![](https://github.com/BlissOS/aaropa_busybox/actions/workflows/build-linux.yml/badge.svg)](https://github.com/BlissOS/aaropa_busybox) <p>
This repo contains `busybox` program that is on initrd, it will also be built into .deb file

## Usage

If you want to use it in docker, do
```dockefile
FROM ghcr.io/BlissOS/aaropa_rootfs_base:latest

# Do your stuff
```

## Meaning behind the name

Ānanda & Āropa combines the Sanskrit words "Ananda" (bliss) and "Aropa" (imposing or placing upon), creating a phrase that means "blissful installation" or "blissful startup."

## Credit

- [Android-x86](https://android-x86.org/) for the original initrd & installer in `newinstaller`.
- [Devuan](https://www.devuan.org/) for a linux distro that doesn't use systemd. We built `aaropa` on top of Devuan.
- All the programs that are listed above. Without these programs, we couldn't be able to achieve something like this.
