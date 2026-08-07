if(place_meeting(x+hspd,y,all)){
		while(!place_meeting(x+sign(hspd),y,all)){
			x+=sign(hspd);
		}
		hspd = 0;
		dest_x += random_range(-60,60);

	}

	if(place_meeting(x,y+vspd,all)){
		while(!place_meeting(x,y+sign(vspd),all)){
			y+=sign(vspd);
		}
		vspd = 0;
		dest_y += random_range(-60,60);
	}