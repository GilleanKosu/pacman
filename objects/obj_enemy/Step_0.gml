/// @description Inteligencia artificial

//Reinciar enemigo cuando el jugador pierda una vida
if (global.Golpe) {
speed=0;
hspeed = 0;
vspeed = 0;
visible=false;

x = xstart;
y = ystart;
exit;
} else {
	visible=true;
}

//Actuar de manera aleatoria
if place_snapped(64, 64) {
    if hspeed == 0 {//movimiento vertical
        if random(3) < 1 {
            if place_free(x - 1, y) {
                hspeed = -velocidad;
                vspeed = 0;
				
            } else {
                direction = 0; // Cambiar dirección a la derecha
            }
        } else if random(3) < 1 {
            if place_free(x + 1, y) {
                hspeed = velocidad;
                vspeed = 0;
            } else {
                direction = 180; // Cambiar dirección a la izquierda
            }
        }
    } else {
        if random(3) < 1 {//movimiento horizontal
            if place_free(x, y - 1) {
                hspeed = 0;
                vspeed = -velocidad;
				
            } else {
                direction = 90; // Cambiar dirección hacia abajo
            }
        } else if random(3) < 1 {
            if place_free(x, y + 1) {
                hspeed = 0;
                vspeed = velocidad;
            } else {
                direction = 270; // Cambiar dirección hacia arriba
            }
        }
    }
}



