# EB Garamond 12

EB Garamond is intended to be an excellent, classical, Garamond. It is a community project to create a revival of Claude Garamont’s famous humanist typefaces from the mid-16th century. This digital version reproduces the original design by Claude Garamont closely: The source for the letterforms is a scan of a specimen known as the “Berner specimen,” which was composed in 1592 by Conrad Berner, the son-in-law of Christian Egenolff and his successor at the Egenolff print office. This specimen shows Garamont’s roman and Granjon’s italic types at different sizes. Hence the name of this project: Egenolff-Berner Garamond.

Why another Garamond? That typeface is a key moment in the history of typography, and European type designers have been reacting to this work ever since. It is probably the most revived typeface in the world and many are excellent. In the world of free/libre culture, however, only a few Garamond-inspired types exist, and none share the scope of this project.

## EB Garamond RCS

This is a fork of EB Garamond 12 by Octavio Pardo, modified by Deborah Khodanovich to include custom citation glyphs for academic use and citation.

## What's Different?
Added custom citation notation glyphs for the Relational Citation System that treats oral transmission and collaborative knowledge production as legitimate.

More info on the project here: [https://dvorit.ca/relational-citation-system]

Original EB Garamond: [https://github.com/octaviopardo/EBGaramond12]

## Building

Fonts are built automatically by GitHub Actions - take a look in the "Actions" tab for the latest build.

If you particularly want to build fonts manually on your own computer, you will need to install the [`yq` utility](https://github.com/mikefarah/yq). On OS X with Homebrew, type `brew install yq`; on Linux, try `snap install yq`; if all else fails, try the instructions on the linked page.

Then:

* `make build` will produce font files.
* `make test` will run [FontBakery](https://github.com/googlefonts/fontbakery)'s quality assurance tests.
* `make proof` will generate HTML proof files.

## License

This Font Software is licensed under the SIL Open Font License, Version 1.1.
This license is copied below, and is also available with a FAQ at
http://scripts.sil.org/OFL

## Repository Layout

This font repository structure is inspired by [Unified Font Repository v0.3](https://github.com/unified-font-repository/Unified-Font-Repository), modified for the Google Fonts workflow.
