function player_state_walk(){
	
	delay +=1;
	
	var key_up = keyboard_check(ord("W"));
	var key_down = keyboard_check(ord("S"));
	var key_left = keyboard_check(ord("A"));
	var key_right = keyboard_check(ord("D"));
	var left_click = mouse_check_button_pressed(mb_left);
	var right_click = mouse_check_button(mb_right);

	var keys = key_right - key_left!=0 or key_down - key_up!=0;

	move_dir = point_direction(0,0,key_right - key_left,key_down - key_up);

	hspd = lengthdir_x(spd * keys,move_dir);
	vspd = lengthdir_y(spd * keys,move_dir);
	
	
	if(left_click and delay >= 30){
		state = player_state_shoot;
		delay = 0;
	}
	
	if(right_click and dash and can_dash){
		can_dash = false;
		alarm[2] = dash_delay;
		hspd = 0;
		vspd = 0;
		dash_dir = point_direction(x,y,mouse_x,mouse_y);
		state = player_state_dash;
	}
}

function player_state_dash(){
	
	x+=hspd;
	y+=vspd;
	
	hspd = lengthdir_x(dash_force,dash_dir);
	vspd = lengthdir_y(dash_force,dash_dir);
	
	if(!instance_exists(obj_dash)){
		var o_dash = instance_create_layer(x - 12,y,"Player",obj_dash);
	}
	
	obj_dash.x = obj_player.x;
	obj_dash.y = obj_player.y;
	
	dash_time++;
	
	if(!audio_is_playing(snd_dodge)){
		audio_play_sound(snd_dodge,2,0);
	}
	
	if(dash_time >= dash_dist){
		dash_time = 0;
		hspd = 0;
		vspd = 0;
		state = player_state_walk;
	}
	
}

function player_state_shoot(){	
	var dir = point_direction(x,y,mouse_x,mouse_y)
	
	var xx = x + lengthdir_x(0,dir) * dir;
	var yy = y + lengthdir_y(0,dir) * dir;
	
	var shoot = instance_create_layer(xx,yy,"Shoot",obj_bomb);
	shoot.direction = dir;
	
	set_screenshake_on();
	
	state = player_state_walk
	

}