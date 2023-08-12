/// @description Movimientos & Sprite etc

// Movimientos del personaje

if keyboard_check(vk_right) { //Hacia la derecha
	direction = 0;
	speed=v;
}

if keyboard_check(vk_left) { //Hacia la izquierda
	direction = 180;
	speed=v;
}

if keyboard_check(vk_up) { //Hacia arriba
	direction = 90;
	speed=v;
}
if keyboard_check(vk_down) { //Hacia abajo
	direction = 270;
	speed=v;
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