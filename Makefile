.PHONY: resume.pdf

CC = xelatex
RESUME_SRCS = $(shell find . -name '*.tex')
BIB = bibtex
OUT_DIR = dist

resume.pdf: resume.tex $(RESUME_SRCS)
	mkdir -p $(OUT_DIR)
	latexmk --xelatex -bibtex -outdir=dist

clean:
	rm -rf $(OUT_DIR)
