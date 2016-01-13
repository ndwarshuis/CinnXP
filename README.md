##CinnXP
make Cinnamon look and feel like the venerable Windows XP interface

Current version: 1.0.1

based on Mint-XP (fmcgorenc) and Adwaita

####Theme includes:
* cinnamon
* gtk-2.0
* gtk-3.0
* metacity-1
* cursor

####Requirements for general users:
* Cinnamon 2.8
* Gtk 3.18
* Pixmap and Adwaita gtk2 engines
* Ruby Sass (for building css from source)

####Requirements for Linux Mint users:
* Cinnamon 2.8
* Gtk 3.10
* Pixmap and Adwaita gtk2 engines

####Install instructions:

1. Run ./compile-theme in top-level directory. The result will be a file called "pkg"
2. Copy directories for icons/themes into system wide directories (/usr/share/icons and /usr/share/themes) or user-wide directories (~/.icons and ~/.themes). Create directories as necessary
3. In ~/.icons, make symbolic link called "default" and point it to the CinnXP cursor directory (this is required for QT apps and probably other stuff)
4. move menu applet to the first position on the panel and open configuration; point icon to CinnXP/cinnamon/menu.png and change text to "start"

Note: Linux Mint 17.3 uses gtk-3.10 at time of writing. To compile the package for these systems, execute "./compile-theme -m" (the "m" stands for "mint"). 

####Notes for testing
Run ./test-theme in the top-level directory to generate a directory of links to the appropriate gtk, cinnamon, and metacity files; the resulting file can be moved to ~/.themes or /usr/share/themes. This is to allow faster/easier live testing of these components without compiling the entire package as above. Note that cursor themes will need to be compiled during testing. 

Analogous to above, execute "./test-theme -m" to generate a testing file for use with gtk-3.10 on Linux Mint

####Tips:
* QT apps have a few unavoidable bugs using this theme. If something "less buggy" is desired, open terminal, type "qtconfig-qt4" and select "Windows" under GUI style (this will look Win98-ish but at least it won't have bugs)
* LibreOffice 5.0 and above will use gtk3 by default (sorta)...to get the gtk2 theme add "export SAL\_USE_VCLPLUGIN=gtk" to ~/.bashrc (this seems to work fine under Linux Mint without intervention)
* Do anything else to make it look more XP-like. Disable effects, disable hinting and antialiasing, change wallpaper to serene green field, etc

