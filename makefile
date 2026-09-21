
DOT_DIR= dots/
PDF_DIR= pdfs/

HANGOUTS = barbara_act-i_wellspring-of-healing bennett_act-i_fantastic-voyage diona_act-i_the-cat-and-the-cocktail noelle_act-i_chivalric-training noelle_act-ii_knightly-exam-prep #example

all: clean_pdf_dir $(HANGOUTS)
	@echo "Don't forget to use $$~ make clean\nwhen you're done, and wish to remove all pdfs"

just_one: clean_pdf_dir bennett_act-i_fantastic-voyage
	@echo "Don't forget to use $$~ make clean\nwhen you're done, and wish to remove all pdfs"


# example:
# 	dot -Tpdf $@.dot -o $(PDF_DIR)$@.pdf

barbara_act-i_wellspring-of-healing: clean_pdf_dir
	@dot -Tpdf $(DOT_DIR)$@.dot -o $(PDF_DIR)$@.pdf

bennett_act-i_fantastic-voyage: clean_pdf_dir
	@dot -Tpdf $(DOT_DIR)$@.dot -o $(PDF_DIR)$@.pdf

diona_act-i_the-cat-and-the-cocktail: clean_pdf_dir
	@dot -Tpdf $(DOT_DIR)$@.dot -o $(PDF_DIR)$@.pdf

noelle_act-i_chivalric-training: clean_pdf_dir
	@dot -Tpdf $(DOT_DIR)$@.dot -o $(PDF_DIR)$@.pdf

noelle_act-ii_knightly-exam-prep: clean_pdf_dir
	@dot -Tpdf $(DOT_DIR)$@.dot -o $(PDF_DIR)$@.pdf


clean_pdf_dir:
	@if [ -d $(PDF_DIR) ]; then rm -rf $(PDF_DIR); fi
	@mkdir $(PDF_DIR)

clean:
	@if [ -d $(PDF_DIR) ]; then rm -rf $(PDF_DIR); fi
	
