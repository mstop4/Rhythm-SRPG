/// @arg unit

var _unit = argument[0];

_unit.my_state = unitState.moved;
obj_map_cursor.cursor_lock = false;
obj_map_controller.mode = mapMode.action;
obj_map_menu.cursor_pos = 0;

ds_list_clear(obj_map_menu.item_names); 
ds_list_add(obj_map_menu.item_names,"Wait");

var _num_units = instance_number(obj_unit);

for (var i=0; i<_num_units; i++) {
	var _u = instance_find(obj_unit,i);
	
	if (_u.id != _unit &&
		_u.my_team == team.enemy &&
		_unit.local_attack_range_grid[# _u.cell_x, _u.cell_y]) {
		
		ds_list_add(obj_map_menu.item_names,"Attack");
		break;
	}
}

menu_toggle(true);