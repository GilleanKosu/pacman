/// @description El nivel empieza de nuevo

if room == rm_level1 exit;

audio_play_sound(snd_intro, 10, false);
instance_deactivate_object(obj_enemy);

global.Golpe = false;
global.Power = false;
global.Bonos = false;

alarm[0] = room_speed*10; //Esta es la alarma de cuando se crea el bono que queremos que vuelva a hacer
alarm[1] = room_speed+15;
room_speed = 50;





