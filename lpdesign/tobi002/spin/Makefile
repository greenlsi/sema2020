all: pan
	#./pan -a -f -m100000 -N ultrasonic_spec
	#./pan -a -f -m100000 -N IMU_spec
	./pan -a -f -m100000 -N semaphore_spec

pan: pan.c
	gcc -o pan pan.c

pan.c: model.pml
	spin -a model.pml

clean:
	rm -rf pan
	rm -rf pan.*