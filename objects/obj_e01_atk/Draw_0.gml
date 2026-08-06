for(var i = 0;i < sprite_get_number(spr_bomb); i++){
	draw_sprite_ext(spr_bomb,i,x,y - i,1,1,rot,c_white,1);
}