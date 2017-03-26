resume.pdf: resume.tex
	pdflatex resume.tex
	pdflatex resume.tex

clean:
	rm -f resume.aux
	rm -f resume.log
	rm -f resume.out
	rm -f resume.pdf
