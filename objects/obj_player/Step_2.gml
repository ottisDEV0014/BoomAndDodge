#region//sprites

	
/*if(mouse_y < y){
	sprite_index = spr_player_up;
}else if(mouse_y >= y){
	sprite_index = spr_player_down;
}

if(hspd < 0){
	sprite_index = spr_player_left;
}else if (hspd > 0){
	sprite_index = spr_player_right;
}

if(vspd < 0){
	sprite_index = spr_player_up;
}else if (vspd > 0){
	sprite_index = spr_player_down;
}
*/

#endregion

#region//colisao

	if(place_meeting(x+hspd,y,obj_wall)){
		while(!place_meeting(x+sign(hspd),y,obj_wall)){
			x+=sign(hspd);
		}
		hspd = 0;
	}
	x+=hspd;

	if(place_meeting(x,y+vspd,obj_wall)){
		while(!place_meeting(x,y+sign(vspd),obj_wall)){
			y+=sign(vspd);
		}
		vspd = 0;
	}
	y+=vspd;
	
#endregion