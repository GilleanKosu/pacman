if hspeed == 0 { // Movimiento vertical
    if place_free(x, y + 1) {
        vspeed = velocidad;
        hspeed = 0;
        direction = 270;
    } else {
       
		if place_free(x, y - 1){
			 vspeed = velocidad; // Solo configurar vspeed en esta rama
	        hspeed = 0;
	        direction = 90
		} else if place_free(x + 1, y) {
			hspeed = velocidad;
		     vspeed = 0;
		     direction = 0
		} else {
			hspeed = velocidad;
		     vspeed = 0;
		     direction = 180;
		}
		
    }
} else { // Movimiento horizontal
    if place_free(x + 1, y) {
        hspeed = velocidad;
        vspeed = 0; // Solo configurar hspeed en esta rama
        direction = 0;
    } else {
		if place_free(x - 1, y){
			 hspeed = velocidad;
		     vspeed = 0;
		     direction = 180;
		} else if place_free(x, y + 1) {
			hspeed = velocidad;
		     vspeed = 0;
		     direction = 90;
		} else {
			hspeed = velocidad;
		     vspeed = 0;
		     direction = 270;
		} 
       
    }
}