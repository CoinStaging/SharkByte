
Debian
====================
This directory contains files used to package sharkbyted/sharkbyte-qt
for Debian-based Linux systems. If you compile sharkbyted/sharkbyte-qt yourself, there are some useful files here.

## sharkbyte: URI support ##


sharkbyte-qt.desktop  (Gnome / Open Desktop)
To install:

	sudo desktop-file-install sharkbyte-qt.desktop
	sudo update-desktop-database

If you build yourself, you will either need to modify the paths in
the .desktop file or copy or symlink your sharkbyte-qt binary to `/usr/bin`
and the `../../share/pixmaps/sharkbyte128.png` to `/usr/share/pixmaps`

sharkbyte-qt.protocol (KDE)

