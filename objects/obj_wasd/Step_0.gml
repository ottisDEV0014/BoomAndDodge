
if(alpha = true){
	image_alpha -= 0.1;
}

if(image_alpha <= 0){
	instance_destroy();
}

if(keyboard_check(ord("W")) or keyboard_check(ord("A")) or keyboard_check(ord("S")) or keyboard_check(ord("D"))){
	alpha = true;
}