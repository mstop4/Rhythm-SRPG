/// @desc cancel
if (!is_moving && !cursor_lock) {
	with (obj_map_controller) {
		switch (mode) {
			case mapMode.move: 
			
				cell_x = selected_unit.cell_x;
				cell_y = selected_unit.cell_y;
			
				with (obj_map_cursor) {
					show_cursor = true;
					cursor_lock = false;
					x = obj_map_controller.selected_unit.cell_x * CELL_SIZE;
					y = obj_map_controller.selected_unit.cell_y * CELL_SIZE;
					prev_x = x;
					prev_y = y;
					target_x = x;
					target_y = y;
				}
				
				selected_unit.show_range = false;
				get_unit_at_cursor();
			
				mode = mapMode.pan;
				break;
			
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
				break;
		}
	}
}