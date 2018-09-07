cur_path_node++;

if (cur_path_node < max_path_node) {
	prev_x = target_x;
	prev_y = target_y;
	target_x = path_get_point_x(obj_map_cursor.unit_path,cur_path_node);
	target_y = path_get_point_y(obj_map_cursor.unit_path,cur_path_node);
	alarm[1] = path_step_time;
	can_move = true;
}

else {
	obj_map_cursor.cursor_lock = false;
	obj_map_controller.mode = mapMode.action;
	calculate_range(obj_map_controller.player_map_grid);

	my_state = unitState.moved;
	can_move = false;
	is_moving = false;
	toggle_menu(true);
}