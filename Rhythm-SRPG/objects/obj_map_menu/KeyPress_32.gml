/// @desc confirm

with (obj_map_controller) {
	switch (mode) {		
		case mapMode.action:
			// refresh player ranges
			with (obj_unit)
				calculate_range(other.player_map_grid);
					
			mode = mapMode.actionWait;
			toggle_menu(false);
			
			if (obj_map_menu.item_names[| obj_map_menu.cursor_pos] == "Attack") {
				obj_battle_controller.show_battle = true;
				alarm[0] = 60;
			}
			
			else if (obj_map_menu.item_names[| obj_map_menu.cursor_pos] == "Wait") {
				alarm[0] = 1;
			}
			break;
	}
}