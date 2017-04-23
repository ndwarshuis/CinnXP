# arrow

Bitmap_14

## sensitive

colors from arrow_color (normal) and arrow_active_color (active)

#### mapping
* blue: royale, noir
* grey: embedded, zune

## insensitive

colors from arrow_insenstive_color

#### mapping
* greige: luna, homestead, metallic, royale, noir
* grey: embedded, zune

# border

#### border slices (right left top bottom)
* ltr: 2 0 2 2
* rtl: 0 2 2 2
* lo: 4 4 4 4

## sensitive

colors from combo_borders_color

#### mapping
* blue: royale, noir
* greige: luna, metallic

## insensitive

colors from combo_insensitive_borders_color and combo_insensitive_edge_color

# button

Bitmap_15

border slice: 3 3 3 3

## sensitive

#### mapping
* blue: royale, noir

## insensitive

#### mapping
* blue: royale, noir
* greige: luna, homestead, metallic

# lo-button (libreoffice)

#### like regular buttons but with two changes
* extra column of pixels on right and left. The outside of the button is transparent and the inside is a continuation of the border+whitespace
* all borders (including insensitive) are combo_borders_color

border slice (left right top bottom): 4 4 3 3

#### mapping
* blue: royale, noir
