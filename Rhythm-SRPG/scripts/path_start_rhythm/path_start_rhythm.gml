cur_path_node = 0;
max_path_node = path_get_number(obj_map_cursor.unit_path);

prev_x = x;
prev_y = y;
target_x = path_get_point_x(obj_map_cursor.unit_path,cur_path_node);
target_y = path_get_point_y(obj_map_cursor.unit_path,cur_path_node);

is_moving = true;
can_move = false;

alarm[1] = path_step_time;