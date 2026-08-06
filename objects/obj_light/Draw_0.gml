if surface_exists(sombra_surface){
	surface_set_target(sombra_surface);
	
	//sombra
	draw_set_colour(c_black);
	draw_set_alpha(.8);
	draw_rectangle(0,0,room_width,room_height,false);
	draw_set_colour(c_white);
	draw_set_alpha(1);
	
	gpu_set_blendmode(bm_subtract);
	
	if(instance_exists(obj_par_e)){
		var num = instance_number(obj_par_e);
		
		for(var i = 0;i < num; i++){
			var inst = instance_find(obj_par_e,i);
			
			//luz
			draw_circle(inst.x,inst.y - 6,32 + irandom(1),false);
	
			//borda da luz
			draw_set_alpha(.4);
			draw_circle(inst.x,inst.y - 6,48 + irandom(1),false);
		}
	}
	
	//luz
	draw_circle(obj_player.x,obj_player.y - 6,32 + irandom(1),false);
	
	//borda da luz
	draw_set_alpha(.4);
	draw_circle(obj_player.x,obj_player.y - 6,48 + irandom(1),false);
	
	draw_set_alpha(1)
	gpu_set_blendmode(bm_normal);
	
	surface_reset_target();
}else{
	sombra_surface = surface_create(room_width,room_height);
}

draw_surface(sombra_surface,0,0);