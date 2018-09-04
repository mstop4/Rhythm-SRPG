if (show_range) {
	for (var i=0; i<global.grid_height; i++) {
		for (var j=0; j<global.grid_width; j++) {
			if (move_range_grid[# j, i]) {
				draw_set_colour(c_aqua);
				draw_rectangle(j*CELL_SIZE,i*CELL_SIZE,(j+1)*CELL_SIZE,(i+1)*CELL_SIZE,true);
			}
			else if (attack_range_grid[# j, i]) {
				draw_set_colour(c_red);
				draw_rectangle(j*CELL_SIZE,i*CELL_SIZE,(j+1)*CELL_SIZE,(i+1)*CELL_SIZE,true);
			}
		}
	}
}