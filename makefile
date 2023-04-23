
HANGOUT_DIR= hangout-events/
PDF_DIR= pdfs/

HANGOUTS = diona_act-i_the-cat-and-the-cocktail noelle_act-i_chivalric-training noelle_act-ii_knightly-exam-prep #example

all: clean_pdf_dir $(HANGOUTS)
	@echo "Don't forget to use $$~ make clean\nwhen you're done, and wish to remove all pdfs"


# example:
# 	dot -Tpdf $@.dot -o $(PDF_DIR)$@.pdf

diona_act-i_the-cat-and-the-cocktail: clean_pdf_dir
	@dot -Tpdf $(HANGOUT_DIR)$@.dot -o $(PDF_DIR)$@.pdf

noelle_act-i_chivalric-training: clean_pdf_dir
	@dot -Tpdf $(HANGOUT_DIR)$@.dot -o $(PDF_DIR)$@.pdf

noelle_act-ii_knightly-exam-prep: clean_pdf_dir
	@dot -Tpdf $(HANGOUT_DIR)$@.dot -o $(PDF_DIR)$@.pdf


clean_pdf_dir:
	@if [ -d $(PDF_DIR) ]; then rm -rf $(PDF_DIR); fi
	@mkdir $(PDF_DIR)

clean:
	@if [ -d $(PDF_DIR) ]; then rm -rf $(PDF_DIR); fi
	
