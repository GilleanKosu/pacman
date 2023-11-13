//Crear las variables del juego
audio_play_sound(snd_intro,10,false);//Cancion por defecto de la sala cuando se crea
instance_deactivate_object(obj_enemy); //Quitamos los enemigos para invocarlos en el evento Paso cuando se acabe la cancion
global.Puntos = 0; //Marcador puntos
global.Vidas = 3;
global.Power = false;
global.Bonos = false;
global.Golpe = false;
alarm[0] = room_speed*10; //Crear el bono

alarm[1] = room_speed*10;  //Aumentar la velocidad del nivel




