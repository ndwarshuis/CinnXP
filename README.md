# CinnXP

make Cinnamon look and feel like the venerable Windows XP interface

based on Mint-XP (fmcgorenc) and Adwaita

## Current Flavors
#### Luna

![luna theme](thumbnails/luna.png?raw=true)

#### Homestead

![homestead theme](thumbnails/homestead.png?raw=true)

#### Metallic

![metallic theme](thumbnails/metallic.png?raw=true)

#### Royale

![royale theme](thumbnails/royale.png?raw=true)

#### Noir

![noir theme](thumbnails/noir.png?raw=true)

#### Embedded

![embedded theme](thumbnails/embedded.png?raw=true)

#### Zune

![zune theme](thumbnails/zune.png?raw=true)

#### Theme contents
* cinnamon
* gtk-2.0
* gtk-3.0
* metacity-1
* cursor

## Fonts
* Tahoma (Default, Desktop, Document)
* Trebuchet MS Bold (Window Title)
* Franklin Gothic Medium (Start Button)

#### Suggested Settings
* Antialiasing: Greyscale
* Hinting: Full

> These are required for full XP look, but not for theme to function. Fonts must be installed seperately.

## Tips
* QT apps have a few unavoidable bugs. If something "less buggy" is desired, open terminal, run `qtconfig-qt4` and select "Windows" under GUI style (this will look Win98-ish but at least it won't have bugs)
* LibreOffice 5.0 and above may use gtk3 by default (sorta)...to get the gtk2 theme add "export SAL\_USE_VCLPLUGIN=gtk" to `~/.bashrc` 

## Requirements

#### General Users (Arch Linux and other bleeding edge distros)
* Cinnamon 3.x
* Gtk 3.20+

#### Linux Mint 17.x users
* Cinnamon 2.x
* Gtk 3.10

#### Linux Mint 18.x users
* Cinnamon 3.x
* Gtk 3.18

#### All Users
* Pixmap and Adwaita gtk2 engines

#### Make depends (all users)
* sassc (to build css from scss)
* xcursorgen (to build the cursor theme)

## Building sassc
Bleeding edge distros (Arch et al) should have `sassc` in the repo already. If not, need to compile from source. This will create a static-linked binary at `/usr/local/bin/sassc`.

#### Install build tools and git
1. `apt-get install build-essential`
2. `apt-get install git`

#### Build and install sassc
1. `git clone https://github.com/sass/sassc.git`
2. `git clone https://github.com/sass/libsass.git`
3. `cd sassc`
4. `SASS_LIBSASS_PATH=../libsass make`
5. `sudo SASS_LIBSASS_PATH=../libsass make install`

## Manual installation

1. Run `./compile-theme` in theme root directory. The result will be a file called "pkg"
  * Pass the `-f` parameter to specify the desired flavor
2. Copy "CinnXP" directories in "icons" and "themes" into system wide paths (`/usr/share/icons` and `/usr/share/themes`) or user-wide paths (`~/.icons` and `~/.themes`). Create directories as necessary
3. In `~/.icons`, make symbolic link called "default" and point it to the CinnXP cursor directory (this is required for QT apps and probably other stuff)
4. move menu applet to the first position on the panel and open configuration; point icon to `CinnXP/cinnamon/menu.png` and change text to "start"

> To compile for lower gtk versions, use the `-g` parameter. Pass `./compile-theme -h` for details. This is necessary for Linux Mint.

## Notes for testing
Run `./test-theme` in the top-level directory to generate a directory of links to the appropriate gtk, cinnamon, and metacity files; the resulting file can be moved to `~/.themes` or `/usr/share/themes`. This is to allow faster/easier live testing of these components without compiling the entire package as above. Note that cursor themes will need to be compiled during testing. 

> Command line args are analogous to `compile-theme`

## ToDo List
* Bug fixes
* Prompt for root access in `compile-theme`
* Automatic installation in `compile-theme`
* Full Icon Theme
* New flavors (Classic)
