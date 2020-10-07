SCRBL := scribble ++main-xref-in --redirect-main http://docs.racket-lang.org/

OBJS = $(patsubst %.scrbl, %.pdf, $(shell ls *.scrbl))
%.pdf: %.scrbl
	@$(SCRBL) ++style style.tex --latex $<
	@xelatex $(patsubst %.pdf, %.tex, $@)

.PHONY: build
build: $(OBJS)

