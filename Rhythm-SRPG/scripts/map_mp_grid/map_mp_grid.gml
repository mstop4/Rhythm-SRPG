var _tile;

with (obj_map_controller) {
	// clear grids
	mp_grid_clear_all(player_map_grid);
	mp_grid_clear_all(enemy_map_grid);

	// add obstacles
	for (var i=0; i<env_tiles_height; i++) {
		for (var j=0; j<env_tiles_width; j++) {
			var _tile = tilemap_get(env_tiles,j,i);
			if (tile_get_index(_tile) == 1) {
				env_grid[# j, i] = 1;
				mp_grid_add_cell(player_map_grid,j,i);
				mp_grid_add_cell(enemy_map_grid,j,i);
			}
		}
	}
}

// add units
with (obj_unit) {
	if (my_team == team.player || my_team == team.ally) {
		mp_grid_add_cell(obj_map_controller.enemy_map_grid,cell_x,cell_y);
	}
	
	else if (my_team == team.enemy) {
		mp_grid_add_cell(obj_map_controller.player_map_grid,cell_x,cell_y);
	}
}