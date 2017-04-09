# applet button

#### Bitmap_136
* normal: top slot
* hover: 2nd slot from top
* active: 2nd slot from bottom
* active-hover: bottom slot

##### Bitmap_138 (demands-attention)

#### final image dimensions
* 26x30: luna, homestead, royale, noir, embedded, zune
* 27x30: metallic (note transparent padding on left side)

#### transformations (from top, including transparent pixels):
* luna, homestead, metallic, zune: copy rows 17 and 19 directly below themselves
* royale, noir, embedded: copy row 13 directly below itself (2x)

#### border-image-slice (top right bottom left)
* 0 5 0 17: luna, homestead, metallic
* 0 11 0 12: royale, noir, embedded, zune

# panel

#### Bitmap_149

#### transformations:
* luna: copy rows 14 and 15 (together) directly below
* NOTE: the rest are already at full height (30px) so no transformation needed

# panel-right

#### Bitmap_159

#### Dimensions:
* 101x30: luna, metallic
* 2x30: royale, embedded, zune
* 3x30: noir
* 4x30: homestead

transformations (from top):
* copy row 13 and 15 directly below themselves
* applies to luna and metallic. remainder just take screenshots

border-image-slice (top right bottom left):
* 0 50 0 50: luna, metallic
* 0 0 0 1: royale, embedded, zune
* 0 0 0 2: noir
* 0 0 0 3: homestead

# separator

Bitmap_152

10x30

just take a screenshot and transparentize the panel bg

# start button

Bitmap_103

#### transformations (from top):
* luna, homestead, metallic, royale, noir: delete row 17
* embedded, zune: copy rows 14 and 16 directly delow themselves, and take top 30 rows
* all: screenshot the rightmost 7 pixels to get the panel bg

border-image-slice: 0 0 0 0
