target_unit = find_unit_at_cell(cell_x, cell_y, team.enemy, selected_unit);
				
if (selected_unit.local_attack_range_grid[# cell_x, cell_y] &&
	target_unit != noone &&
	target_unit.my_team == team.enemy) {
	mode = mapMode.battleForecast;
	obj_map_cursor.show_self = false;
	obj_battle_forecast.show_self = true;
}