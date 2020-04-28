all: pan
	./pan -a -f -N req1
	./pan -a -f -N req2

pan: pan.c
	gcc -o pan pan.c

pan.c: model.pml
	spin -a model.pml
