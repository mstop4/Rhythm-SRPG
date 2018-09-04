var _temp_path = path_add();
var _result;

ds_grid_clear(move_range_grid,0);
ds_grid_clear(attack_range_grid,0);

// find movement range
for (var i=-move_range; i<=move_range; i++) {
	if (cell_y + i >= 0 && cell_y + i < global.grid_width) {
		var _move_start = -move_range + abs(i);
		var _move_end = _move_start + (move_range-abs(i)) * 2 + 1;
	
		for (var j=_move_start; j<_move_end; j++) {
			if (cell_x + j >= 0 && cell_x + j < global.grid_height) {
				_result = mp_grid_path(obj_map_controller.map_grid,_temp_path,
							x+CELL_SIZE/2,y+CELL_SIZE/2,
							x+(j+0.5)*CELL_SIZE,y+(i+0.5)*CELL_SIZE,
							false);
				if (_result && path_get_length(_temp_path) <= move_range * CELL_SIZE) {
					var _legal_cell_x = cell_x + j;
					var _legal_cell_y = cell_y + i;
					move_range_grid[# _legal_cell_x, _legal_cell_y] = 1;
					
					// find attack range
					for (var a=-max_attack_range; a<=max_attack_range; a++) {
						if (_legal_cell_y + a >= 0 && _legal_cell_y + a < global.grid_width) {
							var _attack_start = -max_attack_range + abs(a);
							var _attack_end = _attack_start + (max_attack_range-abs(a)) * 2 + 1;
	
							for (var b=_attack_start; b<_attack_end; b++) {
								var _dist = abs(b) + abs(a);
								if (_dist >= min_attack_range && _legal_cell_x + b >= 0 && _legal_cell_x + b < global.grid_height)
									attack_range_grid[# _legal_cell_x + b, _legal_cell_y + a] = 1;
							}
						}
					}
				}
			}
		}
	}
}


path_delete(_temp_path);