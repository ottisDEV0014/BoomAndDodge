e_num = instance_number(obj_par_e);
delay++;

if(e_num <=0 and room != rm_lvl8){
	if(delay >= 30){
		room_goto_next();
	}
}else if((e_num <=0 and room = rm_lvl8 and global.final1 == true)){
	if(delay >= 30){
		room_goto(rm_final1);
	}
}else if((e_num <=0 and room = rm_lvl8 and global.final2 == true)){
	if(delay >= 30){
		room_goto(rm_final2);
	}
}