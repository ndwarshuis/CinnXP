We isolate the background pieces so we don't have to bother w/ 1 pix manipulations in CSS to get
the right look

Note that the only difference b/t this and 3.18 is the tab-bottom-active and tab-bottom-right.
Due to gtk weirdness it seems we no longer have the ability to theme the background of the
bottom and right oriented notebook backgrounds independently, which means we cant add gradients
in the correct orientation. Therefore, gtk-3.20 right and bottom notebooks have solid
backgrounds of $notebook_bg color. This kinda sucks but who uses right/bottom oriented notebooks
anyways?
