#!/bin/bash

if [ ! "$(which sassc 2> /dev/null)" ]; then
   echo sassc needs to be installed to generate the css.
   exit 1
fi

SASSC_OPT="-M -t compact"

echo Generating the css for cinnamon

sassc $SASSC_OPT cinnamon.scss cinnamon.css
