SHELL   = /bin/sh
FILE   = main
TEX_FILE = $(FILE).tex
PDF_FILE = $(FILE).pdf


define HELP_BODY
USAGE:
	make       ------------ to compile the project
	make open  ------------ to open the output
	make clean ------------ to remove the logs
	make help  ------------ to show this text
endef

all:
	xelatex $(TEX_FILE)
	xelatex $(TEX_FILE)

open:
	xdg-open $(PDF_FILE)

export HELP_BODY
help:
	@echo "$$HELP_BODY"

clean:
	rm -f *.aux *.dvi *.idx *.ilg *.ind *.log *.nav *.out *.snm *.xdv *.toc *~