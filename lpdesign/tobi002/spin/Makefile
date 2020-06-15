all: pan
	./pan -a -f -m100000000 -N IMU_spec
	./pan -a -f  -m100000000 -N ultrasonic_spec
	./pan -a -f -m100000000 -N semaphore_spec
	./pan -a -f  -m100000000 -N msg_spec
	
pan: pan.c
	gcc -DNFAIR=3 -o pan pan.c

pan.c: model.pml
	spin -a model.pml

clean:
	rm -rf pan
	rm -rf pan.*