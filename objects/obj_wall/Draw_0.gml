for(var i = 0;i < sprite_get_number(spr_wall); i++){
	draw_sprite_ext(spr_wall,i,x,y - i,image_xscale,image_yscale,0,c_white,1);
}
