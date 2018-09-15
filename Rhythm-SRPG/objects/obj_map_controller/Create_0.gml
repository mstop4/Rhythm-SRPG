#macro CELL_SIZE 16

global.grid_width = room_width div CELL_SIZE;
global.grid_height = room_height div CELL_SIZE;
global.camera_x = camera_get_view_x(view_camera[0]);
global.camera_y = camera_get_view_y(view_camera[0]);
global.camera_w = camera_get_view_width(view_camera[0]);
global.camera_h = camera_get_view_height(view_camera[0]);

set_camera_target(obj_map_cursor.id,8,8);
display_set_gui_maximize(4,4);

env_grid = ds_grid_create(global.grid_width, global.grid_height);
player_map_grid = mp_grid_create(0,0,global.grid_width, global.grid_height, CELL_SIZE, CELL_SIZE);
enemy_map_grid = mp_grid_create(0,0,global.grid_width, global.grid_height, CELL_SIZE, CELL_SIZE);

env_layer = layer_get_id("Environment");
env_tiles = layer_tilemap_get_id(env_layer);
env_tiles_width = tilemap_get_width(env_tiles);
env_tiles_height = tilemap_get_height(env_tiles);

is_moving = false;
cursor_lock = false;
first_move = true;

cell_x = 0;
cell_y = 0;
selected_unit = noone;
phase = team.player;
show_turn_banner = false;

for (var i=0; i<3; i++) {
	units_to_act[i] = 0;
	units_alive[i] = 0;
}

mode = mapMode.pan;
alarm[2] = 1;

_goal_x = 0;
_goal_y = 0;