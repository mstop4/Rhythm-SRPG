if (obj_map_controller.mode == mapMode.moveWait) {
	obj_map_controller.mode = mapMode.action;
	calculate_range(obj_map_controller.enemy_map_grid);
}