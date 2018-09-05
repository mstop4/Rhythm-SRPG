/// @desc cancel

with (obj_map_controller) {
	switch (mode) {
		case mapMode.move: 
			selected_unit.show_range = false;
			get_unit_at_cursor();
			
			mode = mapMode.pan;
			break;
			
		case mapMode.action:
			with (selected_unit) {
				cell_x = prev_cell_x;
				cell_y = prev_cell_y;
				x = cell_x * CELL_SIZE;
				y = cell_y * CELL_SIZE;
				calculate_range(other.enemy_map_grid);
				show_range = true;
			}
			
			// find path to cursor, overwrite existing path only if path is found.
			if (selected_unit.move_range_grid[# cell_x, cell_y] == 1) {
				var _temp_path = path_add();
				var _result = mp_grid_path(enemy_map_grid,_temp_path,
										  (selected_unit.cell_x + 0.5) * CELL_SIZE, (selected_unit.cell_y + 0.5) * CELL_SIZE,
										  (cell_x + 0.5) * CELL_SIZE, (cell_y + 0.5) * CELL_SIZE,false);
				if (_result)
					path_assign(obj_map_cursor.unit_path,_temp_path);
				
				path_delete(_temp_path);
			}
			
			obj_map_cursor.show_cursor = true;
			obj_map_cursor.cursor_lock = false;
			mode = mapMode.move;
			break;
	}
}