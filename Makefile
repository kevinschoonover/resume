.PHONY: resume.pdf

CC = xelatex
RESUME_SRCS = $(shell find . -name '*.tex')
BIB = bibtex
OUT_DIR = dist

coverletter.pdf: coverletter.tex
	mkdir -p $(OUT_DIR)
	xelatex -output-directory $(OUT_DIR) coverletter.tex
	

resume.pdf: coverletter.tex $(RESUME_SRCS)
	mkdir -p $(OUT_DIR)
	latexmk --xelatex -bibtex -outdir=dist

clean:
	rm -rf $(OUT_DIR)
