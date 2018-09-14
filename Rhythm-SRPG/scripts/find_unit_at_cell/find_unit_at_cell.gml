/// @arg cell_x
/// @arg cell_y
/// @arg team
/// @arg calling_id

var _cell_x = argument[0];
var _cell_y = argument[1];
var _team = argument[2];
var _calling_id = argument[3];

with (obj_unit) {
	if (id != _calling_id &&
		my_team == _team &&
		cell_x == _cell_x &&
		cell_y == _cell_y) {
			return id;
	}
}

return noone;