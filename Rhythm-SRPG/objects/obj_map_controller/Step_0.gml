// directional input
var _h_input = keyboard_check(vk_right) - keyboard_check(vk_left);
var _v_input = keyboard_check(vk_down) - keyboard_check(vk_up);
var _v_pressed = keyboard_check_pressed(vk_down) - keyboard_check_pressed(vk_up);

if (_h_input == 0 && _v_input == 0) {
	reset_move_cursor();
}

else {
	move_map_cursor(_h_input, _v_input);
}

with (obj_map_menu) {
	if (show_self && _v_pressed != 0) 
		cursor_pos = wrap(cursor_pos+_v_pressed,0,ds_list_size(item_names)-1);
}

if (!is_moving && !cursor_lock) {
	
	// confirm 
	if (keyboard_check_pressed(vk_space)) {
	
		switch (mode) {
			case mapMode.pan: 
				if (selected_unit != noone &&
					selected_unit.my_team == team.player &&
					selected_unit.my_state != unitState.attacked) {
					plan_path();
					mode = mapMode.move;
				}
				break;
			
			case mapMode.move:
				// confirm move
				if (selected_unit.move_range_grid[# cell_x, cell_y] == 1) {
					with (obj_map_cursor) {
						cursor_lock = true;
						show_self = false;
						alarm[0] = -1;
					}
				
					alarm[3] = -1;
					alarm[4] = -1;
					
					with (selected_unit) {
						prev_cell_x = cell_x;
						prev_cell_y = cell_y;
						show_range = false;
					}
					
					// moving to same spot
					if (cell_x == selected_unit.cell_x && cell_y == selected_unit.cell_y) {
						unit_end_move_player(selected_unit);
					}
			
					// moving to another spot
					else {
						with (selected_unit) {
							cell_x = other.cell_x;
							cell_y = other.cell_y;
							path_start_rhythm();
						}
			
						mode = mapMode.moveWait;
					}
				}
				break;
			
			case mapMode.action:
				// refresh player ranges
				with (obj_unit)
					calculate_range(other.player_map_grid);
					
				menu_toggle(false);
			
				if (obj_map_menu.item_names[| obj_map_menu.cursor_pos] == "Attack") {
					mode = mapMode.chooseTarget;
					obj_map_cursor.show_self = true;
					cell_x = selected_unit.cell_x;
					cell_y = selected_unit.cell_y;
					obj_map_cursor.prev_x = cell_x;
					obj_map_cursor.prev_y = cell_y;
					obj_map_cursor.target_x = cell_x;
					obj_map_cursor.target_y = cell_y;
					obj_map_cursor.x = cell_x * CELL_SIZE;
					obj_map_cursor.y = cell_y * CELL_SIZE;
					selected_unit.show_range = true;
				}
			
				else if (obj_map_menu.item_names[| obj_map_menu.cursor_pos] == "Wait") {
					mode = mapMode.actionWait;
					alarm[0] = 1;
				}
				break;
				
			case mapMode.chooseTarget:
				mode = mapMode.battleForecast;
				obj_map_cursor.show_self = false;
				obj_battle_forecast.show_self = true;
				break;
				
			case mapMode.battleForecast:
				mode = mapMode.actionWait;
				obj_battle_forecast.show_self = false;
				alarm[0] = 60;
				obj_battle_controller.show_self = true;
		}
	}

	// cancel
	else if (keyboard_check_pressed(ord("Z"))) {
		switch (mode) {
			case mapMode.move: 
			
				cell_x = selected_unit.cell_x;
				cell_y = selected_unit.cell_y;
			
				with (obj_map_cursor) {
					show_self = true;
					cursor_lock = false;
					x = obj_map_controller.selected_unit.cell_x * CELL_SIZE;
					y = obj_map_controller.selected_unit.cell_y * CELL_SIZE;
					prev_x = x;
					prev_y = y;
					target_x = x;
					target_y = y;
				}
				
				selected_unit.show_range = false;
				get_unit_at_cursor();
			
				mode = mapMode.pan;
				break;
			
			case mapMode.action:
				with (selected_unit) {
					cell_x = prev_cell_x;
					cell_y = prev_cell_y;
					x = (cell_x + 0.5) * CELL_SIZE;
					y = (cell_y + 0.5) * CELL_SIZE;
					calculate_range(other.player_map_grid);
					show_range = true;
					my_state = unitState.ready;
				}
			
				with (obj_map_cursor) {
					show_self = true;
					cursor_lock = false;
				}
				
				// find path to cursor, overwrite existing path only if path is found.
				plan_path();
				
				mode = mapMode.move;
				menu_toggle(false);
				break;
				
			case mapMode.chooseTarget:
				menu_toggle(true);
				obj_map_cursor.show_self = false;
				cell_x = selected_unit.cell_x;
				cell_y = selected_unit.cell_y;
				obj_map_cursor.prev_x = cell_x;
				obj_map_cursor.prev_y = cell_y;
				obj_map_cursor.target_x = cell_x;
				obj_map_cursor.target_y = cell_y;
				obj_map_cursor.x = cell_x * CELL_SIZE;
				obj_map_cursor.y = cell_y * CELL_SIZE;
				selected_unit.show_range = false;
				mode = mapMode.action;
				break;
				
			case mapMode.battleForecast:
				obj_map_cursor.show_self = true;
				obj_battle_forecast.show_self = false;
				mode = mapMode.chooseTarget;
		}
	}
}