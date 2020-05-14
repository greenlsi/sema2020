all: pan
	./pan -a -f -m10000000 -N semaphore_spec
	./pan -a -f -m10000000 -N msg_spec

pan: pan.c
	gcc -o pan pan.c

pan.c: model_process.pml
	spin -a model_process.pml

clean:
	rm -rf pan
	rm -rf pan.*