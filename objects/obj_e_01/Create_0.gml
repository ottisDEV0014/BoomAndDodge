//event_inherited();


spd = 0.6;
hspd = 0;
vspd = 0;

delay = 0;

state = "walk";

dest_x = x + random_range(-60,60);
dest_y = y + random_range(-60,60);

time_stop = 30;
timer_stop = time_stop;

dist_max = 200;
dist_min = 100;

dir = 0;

function control_state(){
	switch(state){
		
		case"idle":
		
		timer_stop --;
		
		hspd = 0;
		vspd = 0;
		
		var target = obj_player;
		
		if(instance_exists(target)){
			var line = collision_line(x,y,target.x,target.y,obj_wall,false,false);
			var dist = point_distance(x,y,target.x,target.y);
			
			if(dist < dist_min and !line){
					state = "chase";
				}
		}	
		
		if(timer_stop <= 0){
		
			state = choose("walk","walk","idle");
			
			dest_x += random_range(-60,60);
			dest_y += random_range(-60,60);
			
			timer_stop = time_stop;
		}
		
		
		break;
		
		case"walk":
			
			var dist = point_distance(x,y,dest_x,dest_y);
			
			if(dist < spd * 2){
				state = "idle"
			}
		

			var target = obj_player;
		
			if(instance_exists(target)){
				dir = point_direction(x,y,dest_x,dest_y);
				var line = collision_line(x,y,target.x,target.y,obj_wall,false,false);
				var dist = point_distance(x,y,target.x,target.y);
			
			hspd = lengthdir_x(spd,dir);
			vspd = lengthdir_y(spd,dir);
			
			
				if(dist < dist_min and !line){
					 state = "chase";
				 }
			}
		
		break;
		
		case"chase":
		
		delay +=1;
		
			var target = obj_player;
			
			 if(!instance_exists(target)){
				 state = "idle";
			 }
			 
			if(instance_exists(target)){
				var line = collision_line(x,y,target.x,target.y,obj_wall,false,false);
				var dist = point_distance(x,y,target.x,target.y);
				dir = point_direction(x,y,target.x,target.y);
			}
			
			hspd = lengthdir_x(spd,dir);
			vspd = lengthdir_y(spd,dir);
			
			 if(dist > dist_max){
				 state = "idle";
			 }
			 if(dist <= dist_min and delay >= 120){
				 state = "atk"
			 }
		
		break
		
		case"atk":
		
			delay = 0;
		
			var target = obj_player;
			
			if(!instance_exists(target)){
				state = "idle";
			}
			 
			if(instance_exists(target)){
				var line = collision_line(x,y,target.x,target.y,obj_wall,false,false);
				var dist = point_distance(x,y,target.x,target.y);
				dir = point_direction(x,y,target.x,target.y);
			}				 
				
			hspd = 0;
			vspd = 0;
			
			var xx = x + lengthdir_x(14,dir);
			var yy = y + lengthdir_y(14,dir);
	
			var shoot = instance_create_layer(xx,yy,"Shoot",obj_e01_atk);
			shoot.direction = dir;
	
			state = "chase"
	
			if(dist > dist_min){
				 state = "chase";
			 }
		
		break;
	}
}

