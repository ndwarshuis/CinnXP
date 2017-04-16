# bg

from the interior of the button delineated by border-slice (see below)

# borderless

Bitmap_15

Used in spin buttons. Have no border (as in the entry border)

border slice: 3 3 3 3

transformations:
* copy column 5 towards middle (from left and right sides)
* copy row 5 immediately below
* copy row 8 immediately below
* copy row 12 immediately below

## sensitive

mapping
* blue: royale, noir
* grey: embedded, zune

## insensitive

mapping
* blue: royale, noir
* greige: luna, homestead, metallic
* grey: embedded, zune

# borders

Identical to borderless but add a border around 3/4s of the image (ltr and rtl versions)

border slices (top right bottom left)
* ltr: 4 4 4 3
* rtl: 4 3 4 4

## sensitive

Border color is $combo_borders_color

mapping
* blue: royale, noir

## insensitive

Border color is $combo_insensitive_borders_color

mapping
* blue: royale, noir
* greige: luna, homestead, metallic
* grey: embedded, zune
