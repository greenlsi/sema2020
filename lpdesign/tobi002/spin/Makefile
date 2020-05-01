all: pan
	#./pan -a -f -N ultrasonic_spec
	./pan -a -f
#./pan -a -f -N req2

pan: pan.c
	gcc -o pan pan.c

pan.c: model.pml
	spin -a model.pml

clean:
	rm -rf pan
	rm -rf pan.*