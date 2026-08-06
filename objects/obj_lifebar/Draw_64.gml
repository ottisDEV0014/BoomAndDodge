var amount = (life / life_max) * lifebar_w; // formula1
var amount_fixed = (life_max / life_max) * lifebar_w; // formula fx
var amount_feedback = (life_feedback / life_max) * lifebar_w; // formulafeedback
var x1 = (view_w - 630);
var y1 = view_h - 350;
var x2 = x1 + amount;
var x2_fixed = x1 + amount_fixed;
var x2_feedback = x1 + amount_feedback;
var y2 = y1 + lifebar_h;

if(life > 0){
	
	//bg
	draw_set_colour(color_2);
	draw_rectangle(x1,y1,x2_fixed,y2,false);
	
	//feedback
	draw_set_colour(color_3);
	draw_rectangle(x1,y1,x2_feedback,y2,false);
	
	//vida
	draw_set_colour(color_1);
	draw_rectangle(x1,y1,x2,y2,false);
	
	
}

draw_set_colour(c_white);