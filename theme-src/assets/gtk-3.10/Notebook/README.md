# tabs-active

Bitmap_123 (middle)

border slices identical to tabs-normal

colors
* background: notebook_bg_color
* borders: notebook_borders_color

mapping
* blue: royale, noir
* greige: luna, metallic
* grey: embedded, zune

# tabs-normal

Normal/hover tabs; Bitmap_123 (top two)

Top bottom only: we add 2px transparent pixels on right and left to preserve gap

transformations
* top: use as is from bitmap, but cut off bottom row
* bottom: cut off the top 5 rows of pixels and add bottom corners and border
* left: cut off right 4 columns of pixels and add corner to bottom-left
* right: repeat the inverse of left (don't just blindly flip images, as some have shadows on the right)

border slices (top right bottom left)
* top: 8 6 0 6
* bottom: 0 6 5 6
* left: 6 0 3 4
* left: 6 4 3 0

mapping
* blue: royale, noir
* grey: embedded, zune

NOTE: backgrounds for left and right are identical

# tabs-normal-bg

remainder of the image once border slices are cropped off from tabs-normal

NOTE: left and right are the same (linked) which makes the scss code much cleaner

mapping
* blue: royale, noir
* grey: embedded, zune
