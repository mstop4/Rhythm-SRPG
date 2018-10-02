/// @description cursor move end

is_moving = false;

switch (mode) {
	case mapMode.pan:
		select_unit_at_cursor();
		break;
		
	case mapMode.move:
		// find path to cursor, overwrite existing path only if path is found.
		plan_path(player_map_grid);
		break;
}