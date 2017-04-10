# arrow-check-radio
## sensitive

Light: black and white (fg and selected_fg) for normal and prelight respectively
Dark: all black (for themes that have #000 as selected_fg)

#### mapping
* light: luna, homestead, royale, noir, embedded
* dark: metallic, zune

## insensitive

color from menu_insensitive_fg_color

#### mapping
* greige: luna, homestead, metallic
* blue: royale, noir

# menu

border slice: 3 3 3 3

#### mapping
* griege: luna, homestead

# menubar-separator

## menubar

#### 3 vertical pixels
* top: white (always)
* middle: bg_color
* bottom: menubar_bottom_edge

## separator

#### 2 vertical pixels
* menu_separator_color
* alpha = 0

#### mapping
* blue: royale, noir
* griege: luna, homestead

# menu-menuitem

## menubar_item.png

3x3 image

This one is weird, as all but embedded and royale just use solid selected_bg_color. The other two use a shadow border with an alpha hole in the middle. Top left is menu_separator_color, and bottom right is white

border slice: 1 1 1 1

## menuitem.png

3x3 image

This is also weird, because all except metallic use selected_bg_color. Metallic uses selected_bg_color for the border and the center is a unique color

border slice: 1 1 1 1
