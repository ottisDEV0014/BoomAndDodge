event_inherited();

state();

life = obj_lifebar.life;

/*sprite_dir = move_dir + 90;

if(hspd = 0 and move_dir = 0){
	sprite_dir = 180
}else{
	sprite_dir = 0;
	sprite_dir = move_dir + 90;
}
*/

if(obj_lifebar.life == 0){
	//alarm[0] = 30;
	room_goto(rm_gameover);
}