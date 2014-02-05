all: biosketch.pdf

biosketch.pdf: CV.md format.sty
	pandoc -H format.sty -V fontsize=11pt CV.md -o CV.pdf
