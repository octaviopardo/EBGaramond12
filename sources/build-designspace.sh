#!/bin/sh

set -e

fontmake -o otf ttf -m EB_Garamond-Regular.designspace

fontmake -o otf ttf -m EB_Garamond-Italic.designspace

mv master_otf/* ../fonts/otf/
mv master_ttf/* ../fonts/ttf/
rm -rf master_otf/ master_ttf/

