/// @description Obtener el punto
global.Puntos += 10;
audio_play_sound(snd_eat,10,false);
with(other) {//En el momento en el que el player colisiona con el otro objeto (en este caso el evento es para la moneda)
	instance_destroy();//Destruira la instancia de ese punto
}




