/// @description Movimientos & Sprite etc

if (global.Golpe) exit;//Si el enemigo te golpea sale de este evento completo

// Movimientos del personaje

if keyboard_check(vk_right) && place_free(x+1,y) && place_snapped(32,32){ //Hacia la derecha y hay un espacio libre
	direction = 0;
	speed=velocidad;
}

if keyboard_check(vk_left) && place_free(x-1,y) && place_snapped(32,32){ //Hacia la izquierda
	direction = 180;
	speed=velocidad;
}

if keyboard_check(vk_up) && place_free(x,y-1) && place_snapped(32,32) { //Hacia arriba
	direction = 90;
	speed=velocidad;
}
if keyboard_check(vk_down) && place_free(x,y+1) && place_snapped(32,32){ //Hacia abajo
	direction = 270;
	speed=velocidad;
}

//Verificar direccion y velocidad para cambiar el sprite
if (speed>0){
	image_speed=1;
} else {
	image_speed=0
	image_index=0;
}

//Cambio del sprite segun la direccion en la que se mueva el objeto
switch (direction) {
	case 0:
		sprite_index=spr_right_packman
	break;
	case 90:
		sprite_index=spr_up_packman
	break;
	case 180:
		sprite_index=spr_left_packman
	break;
	case 270:
		sprite_index=spr_down_packman
	break;
}