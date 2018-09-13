// directional input
var _h_input = keyboard_check(vk_right) - keyboard_check(vk_left);
var _v_input = keyboard_check(vk_down) - keyboard_check(vk_up);

with (obj_map_cursor) {
	if (_h_input == 0 && _v_input == 0) {
		reset_move_cursor();
	}
	else {
		move_cursor(_h_input, _v_input);
	}
}

with (obj_map_menu) {
	if (show_menu) 
		cursor_pos = wrap(cursor_pos+_v_input,0,ds_list_size(item_names)-1);
}