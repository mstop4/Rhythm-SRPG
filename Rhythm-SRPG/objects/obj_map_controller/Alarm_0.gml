/// @desc end unit turn
selected_unit.my_state = unitState.attacked;
selected_unit = noone;
obj_battle_controller.show_self = false;
units_to_act[phase]--;
map_mp_grid();

if (units_to_act[phase] <= 0) {
	do {
		phase = wrap(phase+1,0,2);
	} until (units_alive[phase] > 0)
	
	show_turn_banner = true;
	alarm[1] = 60;
}

else {
	mode = mapMode.pan;
	obj_map_cursor.cursor_lock = false;
	obj_map_cursor.show_self = true;
}
