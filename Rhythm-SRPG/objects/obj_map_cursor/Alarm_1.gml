x = target_x;
y = target_y;

is_moving = false;

with (obj_map_controller) {
	switch (mode) {
		case mapMode.pan:
			get_unit_at_cursor();
			break;
		
		case mapMode.move:
			// find path to cursor, overwrite existing path only if path is found.
			plan_path();
			break;
	}
}