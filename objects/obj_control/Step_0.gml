/// @description Controlar todo el nivel

#region//Activar los enemigos nuevamente
if (!audio_is_playing(snd_intro)) { //esto verifica si la cancion de la intro NO esta sonando
	instance_activate_object(obj_enemy) //Cuando deja de sonar invoca a los enemigos en la sala
}
#endregion

#region//Destruir todo cuando el personaje muera
if (global.Vidas == 0) {
	with(obj_enemy) {
		instance_destroy();
	}
	with(obj_player) {
		instance_destroy();
	}
	with(obj_point) {
		instance_destroy();
	}
	with(obj_powerpoint) {
		instance_destroy();
	}
	with(obj_bono) {
		instance_destroy();
	}
}
#endregion

//Verificar si el nivel esta completado o si pacman ha muesto

if (instance_number(obj_point) == 0 && instance_number(obj_powerpoint) ==0 && global.Vidas != 0){
	if room_next(room) != -1 {
		audio_stop_all();
		room_goto_next();
	} else {
		audio_stop_all();
		room_goto(rm_gameover);
		instance_destroy();
	}
}



