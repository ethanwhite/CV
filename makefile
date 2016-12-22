all: CV.pdf biosketch.pdf

CV.pdf: CV.md format.sty
	pandoc -H format.sty --template=tweekedtemplate.tex -V fontsize=11pt --variable urlcolor=blue CV.md -o CV.pdf

biosketch.pdf: biosketch.md format.sty
	pandoc -H format.sty --template=tweekedtemplate.tex -V fontsize=11pt --variable urlcolor=blue biosketch.md -o biosketch.pdf
