/// @desc confirm

with (obj_map_controller) {
	switch (mode) {
		case mapMode.pan: 
			if (selected_unit != noone) {
				selected_unit.show_range = true;
				mode = mapMode.move;
			}
			break;
			
		case mapMode.move:
			obj_map_cursor.cursor_lock = true;
			obj_map_cursor.show_cursor = false;
			
			with (selected_unit) {
				prev_cell_x = cell_x;
				prev_cell_y = cell_y;
				show_range = false;
				path_start(obj_map_cursor.unit_path,my_path_speed,path_action_stop,true);
			}
			
			mode = mapMode.moveWait;
			break;
	}
}