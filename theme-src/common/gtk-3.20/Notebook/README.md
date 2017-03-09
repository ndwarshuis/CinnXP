Bitmap_131 (notebook background)

common b/t luna and homestead
common b/t zune and embedded

Bitmap_123-130 (notebook tabs)

common b/t zune and embedded

Normal/hover tabs:

NOTE: we add 2px transparent pixels on right and left to preserve gap (top/bottom only)

stylistic things
top: use as is from bitmap
bottom: cut off the top row of pixels and add bottom corners and border
left: cut off right 4 columns of pixels and add corner to bottom-left
right: inverse of left

border slices
top: 8 6 1 6
bottom: 5 6 5 6
left: 6 0 3 4
left: 6 4 3 0

NOTE: backgrounds for left and right are identical

NOTE: the only difference b/t this and 3.18 is the tab-bottom-active and tab-bottom-right.
Due to gtk weirdness it seems we no longer have the ability to theme the background of the
bottom and right oriented notebook backgrounds independently, which means we cant add gradients
in the correct orientation. Therefore, gtk-3.20 right and bottom notebooks have solid
backgrounds of $notebook_bg color. This kinda sucks but who uses right/bottom oriented notebooks
anyways?
