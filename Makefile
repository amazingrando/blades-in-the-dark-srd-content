output: all

.PHONY: all
all: Blades-in-the-Dark.pdf Blades-in-the-Dark.epub Blades-in-the-Dark.html

Blades-in-the-Dark.pdf: Blades-in-the-Dark-SRD.md
	pandoc Blades-in-the-Dark-SRD.md \
	--toc --toc-depth=2 \
	--pdf-engine=xelatex \
	-o Blades-in-the-Dark.pdf

Blades-in-the-Dark.epub: Blades-in-the-Dark-SRD.md
	pandoc Blades-in-the-Dark-SRD.md \
	--toc --toc-depth=2 \
	-o Blades-in-the-Dark.epub

Blades-in-the-Dark.html: Blades-in-the-Dark-SRD.md
	pandoc Blades-in-the-Dark-SRD.md \
	-o Blades-in-the-Dark.html

.PHONY: clean
clean:
	rm -rf node_modules *.aux *.log *.pdf *.toc *.pdf *.epub *.html

