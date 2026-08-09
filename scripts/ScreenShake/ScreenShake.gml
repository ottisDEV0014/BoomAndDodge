function set_screenshake_on(){
	
	layer_set_visible(layer_get_id("ScreenShake"),true);
	alarm[5] = 18;
	
}

function set_screenshake_off(){
	
	layer_set_visible(layer_get_id("ScreenShake"),false);
	
}
