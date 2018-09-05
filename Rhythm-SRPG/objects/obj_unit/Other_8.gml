//if (obj_map_controller.mode == mapMode.moveWait) {
	obj_map_cursor.cursor_lock = false;
	obj_map_controller.mode = mapMode.action;
	calculate_range(obj_map_controller.player_map_grid);
//}

my_state = unitState.moved;