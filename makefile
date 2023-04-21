
HANGOUTS = diona_act-i_the-cat-and-the-cocktail noelle_act-i_chivalric-training

all: $(HANGOUTS)


diona_act-i_the-cat-and-the-cocktail:
	dot -Tpdf hangout-event_$@.dot -o hangout-event_$@.pdf

noelle_act-i_chivalric-training:
	dot -Tpdf hangout-event_$@.dot -o hangout-event_$@.pdf


clean:
	rm *.pdf
