/// @desc end turn banner
if (phase == team.player) {
	with (obj_unit) {
		my_state = unitState.ready;
	}
	units_to_act[team.player] = units_alive[team.player];
}

show_turn_banner = false;
mode = mapMode.pan;
obj_map_cursor.cursor_lock = false;
obj_map_cursor.show_self = true;