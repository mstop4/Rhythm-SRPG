/// @desc cancel

with (obj_map_controller) {
	switch (mode) {		
		case mapMode.action:
			with (selected_unit) {
				cell_x = prev_cell_x;
				cell_y = prev_cell_y;
				x = (cell_x + 0.5) * CELL_SIZE;
				y = (cell_y + 0.5) * CELL_SIZE;
				calculate_range(other.player_map_grid);
				show_range = true;
				my_state = unitState.ready;
			}
			
			with (obj_map_cursor) {
				show_cursor = true;
				cursor_lock = false;
			}
				
			// find path to cursor, overwrite existing path only if path is found.
			plan_path();
				
			mode = mapMode.move;
			menu_toggle(false);
			break;
	}
}