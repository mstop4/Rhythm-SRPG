x = target_x;
y = target_y;

is_moving = false;

with (obj_unit) {
	show_range = (obj_map_controller.cell_x == cell_x && obj_map_controller.cell_y == cell_y)
}