all: pan
	./pan -a -f -N ultrasonic_spec
	./pan -a -f -N IMU_spec

pan: pan.c
	gcc -o pan pan.c

pan.c: model.pml
	spin -a model.pml

clean:
	rm -rf pan
	rm -rf pan.*