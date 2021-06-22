#!/usr/bin/env python3
"""Fix the font names for the variable fonts"""
# TODO (M Foley) this shouldn't be required. Send fix to fontmake
from fontTools.ttLib import TTFont
from glob import glob
import os

font_paths = glob("../fonts/vf/*.ttf")

for path in font_paths:
    font = TTFont(path)
    if "EBGaramond-Roman-VF.ttf" == os.path.basename(path):
        font["name"].setName("EBGaramondRoman", 25, 3, 1, 1033)

    if font["MVAR"]: #removing due to rendering issues. Easier to do here than via TTX :)
        del font["MVAR"]
    font.save(path + ".fix")
