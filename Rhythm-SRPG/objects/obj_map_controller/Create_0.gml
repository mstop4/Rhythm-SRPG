#macro CELL_SIZE 16

global.grid_width = room_width div CELL_SIZE;
global.grid_height = room_height div CELL_SIZE;

env_grid = ds_grid_create(global.grid_width, global.grid_height);
player_map_grid = mp_grid_create(0,0,global.grid_width, global.grid_height, CELL_SIZE, CELL_SIZE);
enemy_map_grid = mp_grid_create(0,0,global.grid_width, global.grid_height, CELL_SIZE, CELL_SIZE);

env_layer = layer_get_id("Environment");
env_tiles = layer_tilemap_get_id(env_layer);
var _env_tiles_width = tilemap_get_width(env_tiles);
var _env_tiles_height = tilemap_get_height(env_tiles);
var _tile;

for (var i=0; i<_env_tiles_height; i++) {
	for (var j=0; j<_env_tiles_width; j++) {
		var _tile = tilemap_get(env_tiles,j,i);
		if (tile_get_index(_tile) == 1) {
			env_grid[# j, i] = 1;
			mp_grid_add_cell(player_map_grid,j,i);
			mp_grid_add_cell(enemy_map_grid,j,i);
		}
	}
}

cell_x = 0;
cell_y = 0;
selected_unit = noone;

mode = mapMode.pan;