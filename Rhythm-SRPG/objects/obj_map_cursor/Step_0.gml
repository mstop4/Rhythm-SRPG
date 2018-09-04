if (is_moving) {
	x = lerp(target_x, prev_x, alarm[1] / move_time);
	y = lerp(target_y, prev_y, alarm[1] / move_time);
}