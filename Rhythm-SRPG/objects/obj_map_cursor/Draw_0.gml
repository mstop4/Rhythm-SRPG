if (show_cursor) {
	draw_set_colour(c_white);
	draw_rectangle(x,y,x+CELL_SIZE,y+CELL_SIZE,true);
}

if (obj_map_controller.mode == mapMode.move) {
	draw_path(unit_path,0,0,true);
}

draw_text(x,y,string(cursor_lock));