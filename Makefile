PREFIX = TDPTemplate

TEXFILE = $(PREFIX).tex
AUXFILE = $(PREFIX).aux
PDFFILE = $(PREFIX).pdf
LATEXMK = latexmk -g -pdfxe
RUBBER  = rubber --pdf --force --module xelatex
SILENT  = @

TEMP	= *.aux *.bbl *.blg *.log *.out
RMFILES = $(TEMP) *~ *.toc *.idx *.ilg *.ind *.synctex.gz \
	  *.tmp *.log *.lot *.lof *.adx *.and *.abb *.ldx .temp* $(PREFIX).tar

all:
	$(SILENT) make -s clean
	$(SILENT) $(RUBBER) $(TEXFILE)
# 	$(SILENT) $(LATEXMK) $(TEXFILE)
	$(SILENT) rm -f $(TEMP)

clean:
	$(SILENT) $(RUBBER) --clean $(TEXFILE)
# 	$(SILENT) $(LATEXMK) -C $(TEXFILE)
	$(SILENT) rm -f $(RMFILES)