//draw_self();
for(var i = 0;i < sprite_get_number(spr_portao); i++){
	draw_sprite_ext(spr_portao,i,x,y - i,1,1,0,c_white,1);
}
