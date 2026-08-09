//draw_self();

event_inherited();

for(var i = 0;i < sprite_get_number(spr_enemy02); i++){
	draw_sprite_ext(spr_enemy02,i,x,y - i,1,1,dir + 90,c_white,1);
}