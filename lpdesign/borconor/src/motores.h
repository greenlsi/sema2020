#ifndef MOTORES_H
#define MOTORES_H

/* Girar motor hasta dar con el final de carrera para establecer la posición 0.
*  Bloquea hasta que queda calibrado
*/
void motor_calibrar(); 

/* Mueve el motor paso a paso al compartimento
*  Bloquea hasta que termina de moverse
*/
void motor_posicion(int i);

/* Mueve el motor paso a paso al compartimento
*  Bloquea hasta que termina de mover el servo y se estima que la pastilla ha caido
*/
void servo_caida();

#endif