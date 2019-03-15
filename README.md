# EB Garamond 12

EB Garamond is intended to be an excellent, classical, Garamond. It is a community project to create a revival of Claude Garamont’s famous humanist typefaces from the mid-16th century. This digital version reproduces the original design by Claude Garamont closely: The source for the letterforms is a scan of a specimen known as the “Berner specimen,” which was composed in 1592 by Conrad Berner, the son-in-law of Christian Egenolff and his successor at the Egenolff print office. This specimen shows Garamont’s roman and Granjon’s italic types at different sizes. Hence the name of this project: Egenolff-Berner Garamond.

Why another Garamond? That typeface is a key moment in the history of typography, and European type designers have been reacting to this work ever since. It is probably the most revived typeface in the world and many are excellent. In the world of free/libre culture, however, only a few Garamond-inspired types exist, and none share the scope of this project.


## Building fonts

### TTFs and OTFs
Both formats have been generated using Glyphsapp


### Variable fonts
Variable fonts have been generated using [fontmake](https://github.com/googlei18n/fontmake) and [gftools](https://github.com/googlefonts/gftools). The build chain uses Python 3. Enter the following instructions from the parent dir to generate the fonts.

```
# First we must create a Python3 virtual environment
python3 -m venv venv
source venv/bin/activate
pip install -r requirements.txt
# We can now run the build script in the sources/ dir.
cd sources && sh build-vf.sh
```

