if (show_range) {
	if (obj_map_controller.mode == mapMode.pan)
		draw_set_alpha(0.25);
	else
		draw_set_alpha(0.5);
	
	if (obj_map_controller.mode == mapMode.chooseTarget ||
		obj_map_controller.mode == mapMode.battleForecast) {
		for (var i=0; i<global.grid_height; i++) {
			for (var j=0; j<global.grid_width; j++) {
				if (local_attack_range_grid[# j, i]) 
					draw_sprite(spr_attack_tile,0,j*CELL_SIZE,i*CELL_SIZE);
			}
		}
	}
	
	else {
		for (var i=0; i<global.grid_height; i++) {
			for (var j=0; j<global.grid_width; j++) {
				if (move_range_grid[# j, i]) 
					draw_sprite(spr_move_tile,0,j*CELL_SIZE,i*CELL_SIZE);
				else if (attack_range_grid[# j, i])
					draw_sprite(spr_attack_tile,0,j*CELL_SIZE,i*CELL_SIZE);
			}
		}
	}
	draw_set_alpha(1);
}

draw_self();