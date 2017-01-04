#CinnXP

make Cinnamon look and feel like the venerable Windows XP interface, now includes Luna and Royale flavors

Current version: 1.1.0

based on Mint-XP (fmcgorenc) and Adwaita

####Theme contents
* cinnamon
* gtk-2.0
* gtk-3.0
* metacity-1
* cursor

##Requirements

####General Users (Arch Linux and other bleeding edge distros)
* Cinnamon 3.0
* Gtk 3.20

####Linux Mint 17.x users
* Cinnamon 2.8
* Gtk 3.10

####All Users
* Pixmap and Adwaita gtk2 engines

####Make depends (all users)
* Ruby with Bundler and SASS Gems (to build css from scss)
* xcursorgen (to build the cursor theme)

##Obtaining Ruby and Gems
Ruby must be installed via distro repositories
* Mint: default package should work (depreciation warning can be ignored)
* Arch: `sudo pacman -S ruby`

Install gems before running `compile-theme`
* Mint 17.x: Run `sudo apt-get install bundler`. Manually run `bundle install` in theme root directory
* Arch Linux: Run `sudo pacman -S ruby-bundler`. The `ruby-sass` package is an AUR package

> The script is currently set up to automatically install the needed gems but only if `compile-theme` is run with root access. This is probably a bad idea and ruby will throw lots of warnings...but it will work if you don't feel like installing the gems beforehand.

> The `ruby-sass` package in Mint 17.x does not appear to work.

##Manual installation

1. Run `./compile-theme` in theme root directory. The result will be a file called "pkg"
  * Pass the `-r` flag to compile the royale theme
2. Copy "CinnXP" directories in "icons" and "themes" into system wide paths (`/usr/share/icons` and `/usr/share/themes`) or user-wide paths (`~/.icons` and `~/.themes`). Create directories as necessary
3. In `~/.icons`, make symbolic link called "default" and point it to the CinnXP cursor directory (this is required for QT apps and probably other stuff)
4. move menu applet to the first position on the panel and open configuration; point icon to `CinnXP/cinnamon/menu.png` and change text to "start"

> Linux Mint 17.3 uses gtk-3.10. To compile the package Mint, execute `./compile-theme -m` (the "m" stands for "mint"). 

##Notes for testing
Run `./test-theme` in the top-level directory to generate a directory of links to the appropriate gtk, cinnamon, and metacity files; the resulting file can be moved to `~/.themes` or `/usr/share/themes`. This is to allow faster/easier live testing of these components without compiling the entire package as above. Note that cursor themes will need to be compiled during testing. 

> Analogous to above, execute `./test-theme -m` to generate a testing file for use with gtk-3.10 on Linux Mint

##Tips
* QT apps have a few unavoidable bugs. If something "less buggy" is desired, open terminal, run `qtconfig-qt4` and select "Windows" under GUI style (this will look Win98-ish but at least it won't have bugs)
* LibreOffice 5.0 and above may use gtk3 by default (sorta)...to get the gtk2 theme add "export SAL\_USE_VCLPLUGIN=gtk" to `~/.bashrc` 
* Do anything else to make it look more XP-like. Disable effects, disable hinting and antialiasing, change wallpaper to serene green field, etc

##ToDo List
* Bug fixes
* Prompt for root access in `compile-theme`
* Automatic installation in `compile-theme`
* Full Icon Theme
* New flavors (Zune, Embedded, Royale Noir, Classic)
