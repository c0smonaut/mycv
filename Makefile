all: build

build:
	pdflatex mycv.tex

clean:
	rm -rf *.log *.out *.aux auto *~ *.pdf *.toc *.ps *.dvi book.tex _region_.prv _region_.tex *.fmt

view:
	if [ -f mycv.pdf ]; then \
		xdg-open mycv.pdf; \
	else \
		make && make view; \
	fi
