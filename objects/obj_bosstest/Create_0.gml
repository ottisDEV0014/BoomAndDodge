float_timer = 0;
target = obj_player;

state = "idle"

function boss_states(){
	switch(state){
		
		case"idle":
		
			scr_float(.05,.5);
			
		break;
		
		case"flying":
		
			scr_float(.1,1);
			
		break;
		
	}
	
	
}