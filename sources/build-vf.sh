#!/bin/sh
set -e

echo "Generating VFs"
fontmake -g EB_Garamond-Regular.glyphs --family-name "EB Garamond" -o variable --output-path ../fonts/vf/EBGaramond-Roman-VF.ttf
fontmake -g EB_Garamond-Italic.glyphs --family-name "EB Garamond" -o variable --output-path ../fonts/vf/EBGaramond-Italic-VF.ttf

rm -rf master_ufo/ instance_ufo/


echo "Post processing VFs"
vfs=$(ls ../fonts/vf/*-VF.ttf)
for vf in $vfs
do
	gftools fix-dsig -f $vf;
	ttfautohint $vf "$vf.fix";
	mv "$vf.fix" $vf;
	gftools fix-hinting $vf;
	mv "$vf.fix" $vf;
done


echo "Fixing VF Meta"
gftools fix-vf-meta $vfs;

for vf in $vfs
do
	gftools gen-stat $vf --src stat.yaml --inplace;
done

python postprocessing.py
mv ../fonts/vf/EBGaramond-Italic-VF.ttf.fix ../fonts/vf/EBGaramond-Italic-VF.ttf
mv ../fonts/vf/EBGaramond-Roman-VF.ttf.fix ../fonts/vf/EBGaramond-Roman-VF.ttf
