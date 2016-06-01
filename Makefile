PLFLAGS=-halt-on-error

default: build

build:
	pdflatex ${PLFLAGS} kazakov-thesis.tex
	pdflatex ${PLFLAGS} kazakov-thesis.tex

clean:
	rm -f *.log *.aux *.tdo *.toc *.out eps/*-converted-to.pdf
