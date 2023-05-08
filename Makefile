output: Blades-in-the-Dark.pdf
Blades-in-the-Dark.pdf: Blades-in-the-Dark-SRD.md
	pandoc Blades-in-the-Dark-SRD.md \
	--toc --toc-depth=2 \
	--pdf-engine=xelatex \
	-o Blades-in-the-Dark.pdf

