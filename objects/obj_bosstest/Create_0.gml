target = obj_player;

state = "idle"

function boss_states(){
	switch(state){
		
		case"idle":
		
			float(.05,.5);
			
		break;
		
		case"flying":
		
			float(.1,1);
			
		break;
		
	}
	
	
}