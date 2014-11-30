.PHONY: clean

resume.pdf: resume.out
	pdflatex resume.tex

resume.out: resume.tex
	pdflatex resume.tex

clean:
	rm -f resume.aux
	rm -f resume.log
	rm -f resume.out
	rm -f resume.pdf
