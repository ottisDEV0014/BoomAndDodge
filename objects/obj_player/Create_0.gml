state = player_state_walk;

hspd = 0;
vspd = 0;
move_dir = 0;
spd = 1.4;

sprite_dir = 0;

delay = 0;

life = 0;

hit = true;

damage = function(){
	if(hit){
		obj_lifebar.life -=1;
		alarm[1] = 10;
		hit = false;
	}
}