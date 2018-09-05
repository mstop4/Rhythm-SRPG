obj_map_controller.selected_unit = noone;

with (obj_unit) {
	if (obj_map_controller.cell_x == cell_x && obj_map_controller.cell_y == cell_y) {
		show_range = true;
		obj_map_controller.selected_unit = id;
	}
	
	else {
		show_range = false;
	}
}