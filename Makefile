.PHONY: all
all: page_1.png page_2.png

page_1.png: resume.pdf
	convert -alpha remove -colorspace gray -density 120 -format png8 resume.pdf[0] page_1.png

page_2.png: resume.pdf
	convert -alpha remove -colorspace gray -density 120 -format png8 resume.pdf[1] page_2.png

resume.pdf: resume.tex
	pdflatex resume.tex
	pdflatex resume.tex

clean:
	rm -f resume.aux
	rm -f resume.log
	rm -f resume.out
	rm -f resume.pdf
