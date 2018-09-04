var _temp_move_grid = ds_grid_create(global.grid_width, global.grid_height);
var _temp_attack_grid = ds_grid_create(global.grid_width, global.grid_height);
var _temp_path = path_add();

// find movement range
for (var i=-move_range; i<=move_range; i++) {
	if (cell_y + i >= 0 && cell_y + i < global.grid_width) {
		var _start = -move_range + abs(i);
		var _end = _start + (move_range-abs(i)) * 2 + 1;
	
		for (var j=_start; j<_end; j++) {
			if (cell_x + j >= 0 && cell_y + j < global.grid_height) {
				mp_grid_path(obj_map_controller.map_grid,_temp_path,
							x+CELL_SIZE/2,y+CELL_SIZE/2,
							x+(j+0.5)*CELL_SIZE,y+(i+0.5)*CELL_SIZE,
							false);
				if (path_get_length(_temp_path) <= move_range * CELL_SIZE)
					_temp_move_grid[# cell_x + j, cell_y + i] = 1;
			}
		}
	}
}

ds_grid_copy(my_range,_temp_move_grid);

ds_grid_destroy(_temp_move_grid);
ds_grid_destroy(_temp_attack_grid);
path_delete(_temp_path);