# BSU-master-thesis-template-XeLaTeX
This repository contains necessary files for typesetting master thesis in XeLaTeX. The formatting complies with requirements of BSU administration (except Times New Roman, because I hate it, lol). Most of the workflow is listed in `main.tex` however it is noticable that:
- Class is supposed to be compiled with XeLaTeX only
- All the loaded fonts are presented in repository and could be replaced with others (see `mpaper.cls`)
- Don't modify `mpaper.cls` unless you know what you are doing
- The class relies on modern fonts and packages so loading something odd like `mathrsfs` which contains non-smooth-scalable fonts could lead to ~~disaster~~ wrong layout, so make sure there's no way to typeset what you want without using odd stuff.
- As mentioned in `main.tex` read and follow carefully [An essential guide to LaTeX2e usage](http://anorien.csc.warwick.ac.uk/mirrors/CTAN/info/l2tabu/english/l2tabuen.pdf) before start typesetting anything.
- Don't forget to resolve **all the warnings** in `.log` file, and don't forget to perform this **after all the meaningful work is over**. (This means you would have to repeat this step over and over again after every small amendments). Long story short you __fill in__ the content first, and you __fit in__ the content last.
- Don't use `\sloppy` as it will lead to painful death.

You can always contact me with issue if you want to ask anything (or personally if you're granted this privilege).

# Files
The repository contains following types of files:
- Font files (all the `*.otf` and `*.ttf` files). They are presented for portability, so you don't need to install necessary fonts system-wide
- `mpaper.cls` is a TeX class file that contains definition for `mpaper` class and all the necessary packages and formatting stuff to make your thesis shine bright like it was typeset in Word.
- `main.tex` quite self-explanatory name for a file.
- `mpaper.cwl`. In case you use TeXStudio you can get upset with how it highlights some commands defined in `mpaper.cls`. So you need visit the [TeXStudio manual](https://texstudio-org.github.io/background.html#description-of-the-cwl-format) to know where to emplace this file to get rid of this annoying yellow boxes around 'unknown' commands.
- `LICENSE` file. Read carefully as it can contain something bad like sacrificing your firstborns in honor of C programming language.
- `README.md` file. This is mysterious file that was never seen by anyone, so many philosophers and scientists are in doubt about it's existence

P.S. If you replace suggested main font with Times New Roman I'll cross you out of my friend list and will never drink beer with you.