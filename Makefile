test: datetime2-basque-test.pdf

datetime2-basque-test.pdf: datetime2-basque.ldf datetime2-basque-test.tex
		pdflatex datetime2-basque-test.tex

datetime2-basque.ldf: datetime2-basque.dtx datetime2-basque.ins
	pdflatex datetime2-basque.ins

