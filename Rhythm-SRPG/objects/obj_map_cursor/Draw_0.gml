if (show_self) {
	draw_set_colour(c_white);
	draw_rectangle(x,y,x+CELL_SIZE,y+CELL_SIZE,true);
}

if (obj_map_controller.mode == mapMode.move) {
	draw_path(unit_path,0,0,true);
}