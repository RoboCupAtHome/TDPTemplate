PREFIX = TDPTemplate

TEXFILE = $(PREFIX).tex
AUXFILE = $(PREFIX).aux
PDFFILE = $(PREFIX).pdf
SILENT  = @

TEMP	= *.aux *.bbl *.blg *.log *.out
RMFILES = $(TEMP) *~ *.toc *.idx *.ilg *.ind *.synctex.gz \
	  *.tmp *.log *.lot *.lof *.adx *.and *.abb *.ldx .temp* $(PREFIX).tar

all:
	$(SILENT) make -s clean
	$(SILENT) rubber --pdf --force $(TEXFILE)
	$(SILENT) rm -f $(TEMP)
#	$(SILENT) evince $(PDFFILE)

clean:
	$(SILENT) rm -f $(RMFILES)