.PHONY: resume.pdf

CC = xelatex
RESUME_SRCS = $(shell find . -name '*.tex')
OUT_DIR = dist

resume.pdf: resume.tex $(RESUME_SRCS)
	mkdir -p $(OUT_DIR)
	$(CC) -output-directory=$(OUT_DIR) $<


clean:
	rm -rf $(OUT_DIR)
