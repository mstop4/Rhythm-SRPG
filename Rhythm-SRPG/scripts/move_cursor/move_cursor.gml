if (!is_moving && !cursor_lock) {
	is_moving = true;
	cursor_lock = true;

	if (first_move) {
		alarm[0] = repeat_delay;
		first_move = false;
	}

	else 
		alarm[0] = move_time+1;
	
	alarm[1] = move_time;
	
	prev_x = owner.cell_x * CELL_SIZE;
	prev_y = owner.cell_y * CELL_SIZE;
	
	owner.cell_x = clamp(owner.cell_x+argument[0], 0, global.grid_width-1);
	owner.cell_y = clamp(owner.cell_y+argument[1], 0, global.grid_height-1);
	
	target_x = owner.cell_x * CELL_SIZE;
	target_y = owner.cell_y * CELL_SIZE;
}