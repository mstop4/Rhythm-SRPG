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
		}
	}
}