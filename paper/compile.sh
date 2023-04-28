xelatex -output-directory=output -shell-escape main.tex

cd output 
bibtex main 
cd .. 

xelatex -output-directory=output -shell-escape main.tex
xelatex -output-directory=output -shell-escape main.tex

cp output/main.pdf ../diploma.pdf