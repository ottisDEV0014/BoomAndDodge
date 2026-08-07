x = obj_player.x;
y = obj_player.y;

image_angle = point_direction(x,y,mouse_x,mouse_y);

if (image_speed > 0){
    if image_index > image_number - 1 instance_destroy();
}