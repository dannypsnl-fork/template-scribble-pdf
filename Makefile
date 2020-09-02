doc.tex: doc.scrbl style.tex
	@scribble ++style style.tex --latex doc.scrbl

doc.pdf: doc.tex
	@xelatex doc.tex

.PHONY: pdf html
html: doc.scrbl
	@scribble doc.scrbl
pdf: doc.pdf
