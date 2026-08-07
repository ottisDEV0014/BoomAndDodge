//modo tela cheia:
var full_screen = window_get_fullscreen();

if(keyboard_check_pressed(vk_f11)){
	window_set_fullscreen(!full_screen);
}
