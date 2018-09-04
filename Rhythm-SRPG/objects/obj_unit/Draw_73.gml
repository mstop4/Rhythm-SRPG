if (show_range) {
	draw_set_colour(c_aqua);
	for (var i=0; i<global.grid_height; i++) {
		for (var j=0; j<global.grid_width; j++) {
			if (my_range[# j, i] == 1) {
				draw_rectangle(j*CELL_SIZE,i*CELL_SIZE,(j+1)*CELL_SIZE,(i+1)*CELL_SIZE,true);
			}
		}
	}
}