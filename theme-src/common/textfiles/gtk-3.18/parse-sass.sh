#!/bin/bash

if [ ! "$(which sassc 2> /dev/null)" ]; then
   echo sassc needs to be installed to generate the css.
   exit 1
fi

SASSC_OPT="-M -t compact"

echo Generating the css for gtk-contained

sassc $SASSC_OPT gtk-contained.scss gtk-contained.css
