if (!is_moving && !cursor_lock && show_cursor) {
	is_moving = true;
	cursor_lock = true;

	if (first_move) {
		alarm[0] = repeat_delay;
		first_move = false;
	}

	else 
		alarm[0] = move_time+1;
	
	alarm[1] = move_time;
	
	prev_x = obj_map_controller.cell_x * CELL_SIZE;
	prev_y = obj_map_controller.cell_y * CELL_SIZE;
	
	obj_map_controller.cell_x = clamp(obj_map_controller.cell_x+argument[0], 0, global.grid_width-1);
	obj_map_controller.cell_y = clamp(obj_map_controller.cell_y+argument[1], 0, global.grid_height-1);
	
	target_x = obj_map_controller.cell_x * CELL_SIZE;
	target_y = obj_map_controller.cell_y * CELL_SIZE;
}