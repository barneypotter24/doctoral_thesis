make damnthatsreallyclean
pdflatex -interaction=nonstopmode -synctex=1 -shell-escape thesis
bibtex thesis
pdflatex -interaction=nonstopmode -synctex=1 -shell-escape thesis
pdflatex -interaction=nonstopmode -synctex=1 -shell-escape thesis