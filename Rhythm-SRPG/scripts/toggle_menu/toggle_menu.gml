/// @arg visible

var _visible = argument[0];

obj_map_menu.show_menu = _visible;

if (_visible){
	obj_map_menu.x = obj_map_controller.selected_unit.x + 32;
	obj_map_menu.y = obj_map_controller.selected_unit.y;
}