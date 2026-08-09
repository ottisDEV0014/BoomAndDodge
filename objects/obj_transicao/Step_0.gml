if(image_alpha >= 1 and room = rm_menu){
	room_goto_next();
} else if(image_alpha >= 1 and room = rm_gameover){
	room_goto(rm_lvl1);
}