function player_state_walk(){
	
	var key_up = keyboard_check(ord("W"));
	var key_down = keyboard_check(ord("S"));
	var key_left = keyboard_check(ord("A"));
	var key_right = keyboard_check(ord("D"));

	var keys = key_right - key_left!=0 or key_down - key_up!=0;

	move_dir = point_direction(0,0,key_right - key_left,key_down - key_up);

	hspd = lengthdir_x(spd * keys,move_dir);
	vspd = lengthdir_y(spd * keys,move_dir);
	
}