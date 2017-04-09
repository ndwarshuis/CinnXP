# tabs-active

Bitmap_123 (middle)

border slices identical to tabs-normal

colors
* background (top and left): notebook_bg_a_color
* background (right and bottom): notebook_bg_b_color
* borders: notebook_borders_color

mapping
* blue: royale, noir
* greige: luna, metallic
* grey: embedded, zune

# tabs-normal

left and right identical to gtk3.10, with exception of adding hover

transformations
* top: use as is from bitmap
* bottom: cut off the top row of pixels and add bottom corners and border
* left: see gtk3.10
* right: see gtk3.10

border slices
* top: 8 6 1 6
* bottom: 5 6 5 6
* left: 6 0 3 4
* left: 6 4 3 0

mapping
* blue: royale, noir
* grey: embedded, zune

# tabs-normal-bg

identical to gtk3.10
