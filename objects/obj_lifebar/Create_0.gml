view_w = camera_get_view_width(view_camera[0]);
view_h = camera_get_view_height(view_camera[0]);
display_set_gui_size(view_w,view_h);

life_max = 4;
life = life_max;
life_feedback = life_max;
lifebar_w = 144;
lifebar_h = 16;

//cores
color_1 = make_colour_rgb(250,16,48);
color_2 = make_colour_rgb(4,1,25);
color_3 = c_white;