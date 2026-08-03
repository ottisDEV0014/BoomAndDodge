function player_state_walk(){
	
	delay +=1;
	
	var key_up = keyboard_check(ord("W"));
	var key_down = keyboard_check(ord("S"));
	var key_left = keyboard_check(ord("A"));
	var key_right = keyboard_check(ord("D"));
	var left_click = mouse_check_button_pressed(mb_left);

	var keys = key_right - key_left!=0 or key_down - key_up!=0;

	move_dir = point_direction(0,0,key_right - key_left,key_down - key_up);

	hspd = lengthdir_x(spd * keys,move_dir);
	vspd = lengthdir_y(spd * keys,move_dir);
	
	if(left_click and delay >= 30){
		state = player_state_shoot
		delay = 0;
	}
}

function player_state_shoot(){
	var dir = point_direction(x,y,mouse_x,mouse_y)
	
	var xx = x + lengthdir_x(0,dir) * dir;
	var yy = y + lengthdir_y(0,dir) * dir;
	
	var shoot = instance_create_layer(xx,yy,"Shoot",obj_bomb);
	shoot.direction = dir;
	
	
	state = player_state_walk
	

}