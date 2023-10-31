/// @description Configuracion del enemigo
sprite_index = spr_enemy;
image_speed = 0;

//Iniciar el movimiento aleatorio
velocidad = 4;
direction = choose(0,90,180,270);
motion_set(direction, velocidad);

function direccionChoque (posicion) {
	posiciones = [0,90,180,270];
	direccionFinal = null;
	array_delete(posiciones, posicion, 1);
	
	
	
};