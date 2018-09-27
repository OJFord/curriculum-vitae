.PHONY: clean

clean:
	rm -f cv.pdf

cv.pdf: clean
	lualatex cv.tex
