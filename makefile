pdf:
	pandoc ./thesis.md -o ./thesis.pdf --pdf-engine=lualatex \
	--filter pandoc-xnos --defaults=metadata --citeproc
