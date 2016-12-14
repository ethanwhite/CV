all: CV.pdf

CV.pdf: CV.md format.sty
	pandoc -H format.sty --template=tweekedtemplate.tex -V fontsize=11pt --variable urlcolor=blue CV.md -o CV.pdf
