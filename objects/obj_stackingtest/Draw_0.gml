for(var i = 0;i < sprite_get_number(spr_player); i++){
	draw_sprite_ext(spr_player,i,x,y - i,1,1,point_direction(x,y,mouse_x,mouse_y) + 90,c_white,1);
}
//point_direction(x,y,mouse_x,mouse_y) + 90