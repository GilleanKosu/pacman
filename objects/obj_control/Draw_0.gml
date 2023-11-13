/// @description Dibujar los puntos de vida

#region//Dibujar Score
draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_font(fnt_texto);
draw_text(32, 16, "Score: " + string(global.Puntos)); //32 pixeles desde la derecha, 16 de la superior
#endregion

#region//Dibujar vidas
draw_text(room_width/2,15, "LIFES: ");
for(var i = 0; i<global.Vidas; i += 1) {
	draw_sprite_stretched(spr_right_packman, 2, room_width/2+string_width("LIFES: ")+(i*33), 16, 32,32);
}
#endregion

#region//Dibujar Ready
if (audio_is_playing(snd_intro)) {
	draw_set_color(c_yellow);
	draw_set_halign(fa_center);
	draw_set_valign(fa_top);
	draw_set_font(fnt_ready);
	
	draw_text(room_width/2+128, room_height/2+8, "Ready!");
}
#endregion

#region//Dibujar bono
if (global.Bonos) {
	draw_sprite(spr_cherry,0, room_width-64, 0);
}
#endregion

#region //Dibujar Game Over

if (global.Vidas ==0) {
	draw_set_color (c_red);
	draw_set_halign(fa_center);
	draw_set_valign(fa_top);
	draw_set_font(fnt_ready);
	draw_text(room_width/2, room_height/2, "Game Over");
	
}

#endregion

