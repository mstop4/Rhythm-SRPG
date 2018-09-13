/// @arg map_grid

var _map_grid = argument[0];
var _temp_path = path_add();
var _result;

ds_grid_clear(move_range_grid,0);
ds_grid_clear(attack_range_grid,0);
ds_grid_clear(local_attack_range_grid,0);

// find local attack range
for (var a=-max_attack_range; a<=max_attack_range; a++) {
	if (cell_y + a >= 0 && cell_y + a < global.grid_height) {
							
		var _attack_start = -max_attack_range + abs(a);
		var _attack_end = _attack_start + (max_attack_range-abs(a)) * 2 + 1;
	
		for (var b=_attack_start; b<_attack_end; b++) {
			var _dist = abs(b) + abs(a);
			if (_dist >= min_attack_range && cell_x + b >= 0 && cell_x + b < global.grid_width)
				local_attack_range_grid[# cell_x + b, cell_y + a] = 1;
		}
	}
}

// find movement range
for (var i=-move_range; i<=move_range; i++) {
	if (cell_y + i >= 0 && cell_y + i < global.grid_height) {
		var _move_start = -move_range + abs(i);
		var _move_end = _move_start + (move_range-abs(i)) * 2 + 1;
	
		for (var j=_move_start; j<_move_end; j++) {
			if (cell_x + j >= 0 && cell_x + j < global.grid_width) {
				
				var _unit_at = instance_position((cell_x + j) * CELL_SIZE, (cell_y + i) * CELL_SIZE, obj_unit);
				
				if (_unit_at == noone || _unit_at == id) {
				
					_result = mp_grid_path(_map_grid,_temp_path,
								x,y,
								x+j*CELL_SIZE,y+i*CELL_SIZE,
								false);
							
					if (_result && path_get_length(_temp_path) <= move_range * CELL_SIZE) {
						var _legal_cell_x = cell_x + j;
						var _legal_cell_y = cell_y + i;
						move_range_grid[# _legal_cell_x, _legal_cell_y] = 1;
					
						// find attack range
						for (var a=-max_attack_range; a<=max_attack_range; a++) {
							if (_legal_cell_y + a >= 0 && _legal_cell_y + a < global.grid_height) {
							
								var _attack_start = -max_attack_range + abs(a);
								var _attack_end = _attack_start + (max_attack_range-abs(a)) * 2 + 1;
	
								for (var b=_attack_start; b<_attack_end; b++) {
									var _dist = abs(b) + abs(a);
									if (_dist >= min_attack_range && _legal_cell_x + b >= 0 && _legal_cell_x + b < global.grid_width)
										attack_range_grid[# _legal_cell_x + b, _legal_cell_y + a] = 1;
								}
							}
						}
					}
				}
			}
		}
	}
}


path_delete(_temp_path);