test: datetime2-basque-test.pdf
doc: datetime2-basque.pdf

datetime2-basque-test.pdf: datetime2-basque.ldf datetime2-basque-test.tex
		pdflatex datetime2-basque-test.tex

datetime2-basque.ldf: datetime2-basque.dtx datetime2-basque.ins
	pdflatex datetime2-basque.ins

datetime2-basque.pdf: datetime2-basque.dtx
	pdflatex datetime2-basque.dtx
	makeindex -s gind.ist datetime2-basque.idx
	makeindex -s gglo.ist -o datetime2-basque.gls datetime2-basque.glo
	pdflatex datetime2-basque.dtx
	pdflatex datetime2-basque.dtx
