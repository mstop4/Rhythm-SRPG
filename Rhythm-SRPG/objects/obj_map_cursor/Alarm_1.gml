x = target_x;
y = target_y;

is_moving = false;

with (obj_map_controller) {
	switch (mode) {
		case mapMode.pan:
			get_unit_at_cursor();
			break;
		
		case mapMode.move:
			// find path to cursor, overwrite existing path only if path is found.
			if (selected_unit.move_range_grid[# cell_x, cell_y] == 1) {
				var _temp_path = path_add();
				var _result = mp_grid_path(enemy_map_grid,_temp_path,
										  (selected_unit.cell_x + 0.5) * CELL_SIZE, (selected_unit.cell_y + 0.5) * CELL_SIZE,
										  (cell_x + 0.5) * CELL_SIZE, (cell_y + 0.5) * CELL_SIZE,false);
				if (_result)
					path_assign(other.unit_path,_temp_path);
				
				path_delete(_temp_path);
			}
			break;
	}
}