/// @description Golpe o atacar
if (other.sprite_index == spr_enemy_scared) {
	global.Puntos += 200;
	audio_play_sound(snd_eat_ghost,10,false);
	with (other) {
		x = xstart;
		y = ystart;
		v = 4;
		speed = v;
		sprite_index = spr_enemy;
		image_index = col;
		image_speed = 0;
	}
} else {
	if !(global.Golpe == false) && (x = other.x || y = other.y) {
		audio_stop_all();
		audio_play_sound(snd_death,10,false);
		
		//Reiniciar velocidad
		room_speed = 50;
		obj_control.alarm[1] = room_speed+15;
		
		speed = 0;
		global.Vidas -= 1;
		sprite_index = spr_player_dead
		image_speed = 1;
		global.Golpe = true;
		
		with(obj_bono) {
			instance_destroy();
		}
		
	}
}






