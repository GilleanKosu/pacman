/// @description Verificar la animacion de la muerte
if (sprite_index == spr_player_dead) {
	direction = 0;
	image_speed = 0;
	x = xstart;
	y = ystart;
	sprite_index = spr_right_packman;
	image_index = 0;
	
	global.Golpe = false;
}





