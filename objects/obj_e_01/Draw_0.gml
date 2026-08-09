//draw_self();

event_inherited(); 

for(var i = 0;i < sprite_get_number(spr_enemy01); i++){
	draw_sprite_ext(spr_enemy01,i,x,y - i,1,1,dir + 90,c_white,1);
}
