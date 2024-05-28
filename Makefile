# LaTeX compiler
LATEX=pdflatex
BIBER=biber

# Main LaTeX file
MAIN=main

# Commands
PDFLATEX=$(LATEX) -synctex=1 -interaction=nonstopmode -enable-write18 -file-line-error
MAKEGLOSSARIES=makeglossaries
BIBER=$(BIBER)
RM=rm -f

all: $(MAIN).pdf

$(MAIN).pdf: $(MAIN).tex
	$(PDFLATEX) $(MAIN).tex
	$(MAKEGLOSSARIES) $(MAIN)
	$(BIBER) $(MAIN)
	$(PDFLATEX) $(MAIN).tex
	$(PDFLATEX) $(MAIN).tex

# Define the clean-up commands for Linux
clean:
	$(RM) *.aux *.bbl *.bcf *.blg *.log *.out *.run.xml *.synctex.gz *.tdo *.acn *.acr *.alg *.glg *.glo *.gls *.ist *.toc
	$(RM) -r svg-inkscape

# Define the clean-up commands for Windows
clean-win:
	del *.aux *.bbl *.bcf *.blg *.log *.out *.run.xml *.synctex.gz *.tdo *.acn *.acr *.alg *.glg *.glo *.gls *.ist *.toc
	rmdir /s /q svg-inkscape

.PHONY: all clean
