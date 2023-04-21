
HANGOUTS = diona_act-i_the-cat-and-the-cocktail noelle_act-i_chivalric-training

all: $(HANGOUTS)


diona_act-i_the-cat-and-the-cocktail:
	dot -Tpdf $@.dot -o $@.pdf

noelle_act-i_chivalric-training:
	dot -Tpdf $@.dot -o $@.pdf


clean:
	rm *.pdf
