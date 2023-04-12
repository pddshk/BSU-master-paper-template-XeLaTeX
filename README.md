# BSU-master-paper-template-XeLaTeX
This repository contains necessary files for typesetting master paper in XeLaTeX. The formatting complies with requirements of BSU administration (except Times New Roman, because I hate it, lol). Most of the workflow is listed in `main.tex` however it is noticable that:
- Class is supposed to be compiled with XeLaTeX only
- All the loaded fonts are presented in repository and could be replaced with others (see `mpaper.cls`)
- Don't modify `mpaper.cls` unless you know what you are doing
- The class relies on modern fonts and packages so loading something odd like `mathrsfs` which contains non-smooth-scalable fonts could lead to ~~disaster~~ wrong layout, so make sure there's no way to typeset what you want without using odd stuff.
- As mentioned in `main.tex` read and follow carefully [An essential guide to LaTeX2e usage](http://anorien.csc.warwick.ac.uk/mirrors/CTAN/info/l2tabu/english/l2tabuen.pdf) before start typesetting anything.
- Don't forget to resolve **all the warnings** in `.log` file, and don't forget to perform this **after all the meaningful work is over**. (This means you would have to repeat this step over and over again after every small amendments). Long story short you __fill in__ the content first, and you __fit in__ the content last.
- Don't use `\sloppy` as it will lead to painful death.

You can always contact me with issue if you want to ask anything (or personally if you're granted this privilege).

P.S. If you replace suggested main font with Times New Roman I'll cross you out of my friend list and will never drink beer with you.