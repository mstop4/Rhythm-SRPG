if (!is_moving && !cursor_lock && obj_map_cursor.show_self) {
	is_moving = true;
	cursor_lock = true;

	if (first_move) {
		alarm[3] = cursor_repeat_delay;
		first_move = false;
	}

	else {
		alarm[3] = obj_map_cursor.move_time+1;
	}
	
	alarm[4] = obj_map_cursor.move_time;
	obj_map_cursor.alarm[0] = obj_map_cursor.move_time;
	
	obj_map_cursor.prev_x = cell_x * CELL_SIZE;
	obj_map_cursor.prev_y = cell_y * CELL_SIZE;
	
	cell_x = clamp(cell_x+argument[0], 0, global.grid_width-1);
	cell_y = clamp(cell_y+argument[1], 0, global.grid_height-1);
	
	obj_map_cursor.target_x = cell_x * CELL_SIZE;
	obj_map_cursor.target_y = cell_y * CELL_SIZE;
}