/// @arg visible

var _visible = argument[0];
var _su_x = obj_map_controller.selected_unit.x;
var _su_y = obj_map_controller.selected_unit.y;


with (obj_map_menu) {
	show_self = _visible;

	if (_visible) {

		menu_height = 16 * ds_list_size(item_names);
		x = _su_x <= room_width-menu_width-8 ? _su_x + 32 : _su_x - 8 - menu_width;
		y = min(_su_y, room_height-8-menu_height);
	}
}