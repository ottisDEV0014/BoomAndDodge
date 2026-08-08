//draw_self();
for(var i = 0;i < sprite_get_number(spr_player); i++){
	draw_sprite_ext(spr_player,i,x,y - i,1,1,point_direction(x,y,mouse_x,mouse_y) + 90,c_white,1);
}

if(room = rm_final2){
	draw_sprite(spr_caos,image_index,irandom_range(0,room_width),irandom_range(0,room_height));
	draw_sprite(spr_menu,3,room_width div 2, room_height div 2);
}