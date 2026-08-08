delay ++;

if(delay >= 180){
	alpha = true;
}

if(alpha = true){
	image_alpha -= 0.1;
}

if(image_alpha <= 0){
	instance_destroy();
}

if(mouse_check_button_pressed(mb_left)){
	alpha = true;
}