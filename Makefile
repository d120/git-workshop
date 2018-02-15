all: slides exercises cheatsheet solutions
	

slides: Vortrag.tex
	pdflatex -shell-escape Vortrag
	pdflatex -shell-escape Vortrag
	pdflatex -shell-escape Vortrag
	
exercises: Aufgaben-gen.tex
	pdflatex -shell-escape Aufgaben-gen
	pdflatex -shell-escape Aufgaben-gen
	pdflatex -shell-escape Aufgaben-gen
	mv Aufgaben-gen.pdf Aufgaben.pdf

solutions: Aufgaben-gen.tex
	pdflatex -shell-escape "\def\mksln{1} \input{Aufgaben-gen.tex}"
	pdflatex -shell-escape "\def\mksln{1} \input{Aufgaben-gen.tex}"
	pdflatex -shell-escape "\def\mksln{1} \input{Aufgaben-gen.tex}"
	mv Aufgaben-gen.pdf Aufgaben-Lösungen.pdf

cheatsheet: cheat-sheet.tex
	pdflatex -shell-escape cheat-sheet
	pdflatex -shell-escape cheat-sheet
	pdflatex -shell-escape cheat-sheet

clean:
	rm -f *.bib.bak *.acn *.acr *.alg *.glg *.glo *.gls *.ist *.lol *.lot *.fdb_latexmk *.aux *.bbl *.aux *.synctex.gz *.log *.out *.blg *.lof *.toc *.len *.nav *.snm *.vrb *.backup *.tex~ *.bib~ *.glsdefs *.run.xml *-blx.bib *.auxlock
	rm -fR gfxcompiled/* tmp/* svg-inkscape/*
