/// @desc cancel

with (obj_map_controller) {
	switch (mode) {
		case mapMode.move: 
			selected_unit.show_range = false;
			get_unit_at_cursor();
			
			mode = mapMode.pan;
			break;
	}
}