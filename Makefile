.DEFAULT_GOAL := cv.pdf
.PHONY: clean

clean:
	rm -f cv.{aux,log,pdf,out}

cv.pdf: clean
	lualatex cv.tex
