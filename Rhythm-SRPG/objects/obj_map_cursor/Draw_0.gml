if (show_self) {
	draw_self();
}

if (obj_map_controller.mode == mapMode.move) {
	draw_path(unit_path,0,0,true);
}