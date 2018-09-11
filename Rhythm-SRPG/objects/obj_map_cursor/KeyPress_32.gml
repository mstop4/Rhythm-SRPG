/// @desc confirm
if (!is_moving && !cursor_lock) {
	with (obj_map_controller) {
		switch (mode) {
			case mapMode.pan: 
				if (selected_unit != noone &&
					selected_unit.my_team == team.player &&
					selected_unit.my_state != unitState.attacked) {
					plan_path();
					mode = mapMode.move;
				}
				break;
			
			case mapMode.move:
				// confirm move
				if (selected_unit.move_range_grid[# cell_x, cell_y] == 1) {
					with (obj_map_cursor) {
						cursor_lock = true;
						show_cursor = false;
						alarm[0] = -1;
						alarm[1] = -1;
					}
					
					with (selected_unit) {
						prev_cell_x = cell_x;
						prev_cell_y = cell_y;
						show_range = false;
					}
					
					// moving to same spot
					if (cell_x == selected_unit.cell_x && cell_y == selected_unit.cell_y) {
						selected_unit.my_state = unitState.moved;
						obj_map_cursor.cursor_lock = false;
						mode = mapMode.action;
						toggle_menu(true);
					}
			
					// moving to another spot
					else {
						with (selected_unit) {
							cell_x = other.cell_x;
							cell_y = other.cell_y;
							path_start_rhythm();
						}
			
						mode = mapMode.moveWait;
					}
				}
				break;
		}
	}
}