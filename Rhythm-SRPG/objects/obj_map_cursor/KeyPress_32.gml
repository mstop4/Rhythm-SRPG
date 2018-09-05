/// @desc confirm

with (obj_map_controller) {
	switch (mode) {
		case mapMode.pan: 
			if (selected_unit != noone) {
				selected_unit.show_range = true;
				mode = mapMode.move;
			}
			break;
	}
}