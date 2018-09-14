if (obj_map_controller.is_moving) {
	x = lerp(target_x, prev_x, alarm[0] / move_time);
	y = lerp(target_y, prev_y, alarm[0] / move_time);
}