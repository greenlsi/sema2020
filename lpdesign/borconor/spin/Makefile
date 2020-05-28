all: pan
#	./pan -a -f -N inicio
#	./pan -a -f -N fin
#	./pan -a -f -N sensores_on
#	./pan -a -f -N led_on	
#	./pan -a -f -N detector_pastilla
#	./pan -a -f -N detector_pastilla_error
#	./pan -a -f -N error_abierto
#	./pan -a -f -N error_dispensar
#	./pan -a -f -N alerta_recoger
#	./pan -a -f -N recogida_correcta
#	./pan -a -f -N error_recogida
pan: pan.c
	gcc -o pan pan.c

pan.c: modelo.pml
	spin -a modelo.pml

