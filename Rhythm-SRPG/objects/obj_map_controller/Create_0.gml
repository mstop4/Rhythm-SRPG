#macro CELL_SIZE 16

global.grid_width = room_width div CELL_SIZE;
global.grid_height = room_height div CELL_SIZE;

player_map_grid = mp_grid_create(0,0,global.grid_width, global.grid_height, CELL_SIZE, CELL_SIZE);
enemy_map_grid = mp_grid_create(0,0,global.grid_width, global.grid_height, CELL_SIZE, CELL_SIZE);
mp_grid_add_instances(player_map_grid,obj_obstacle,false);
mp_grid_add_instances(enemy_map_grid,obj_obstacle,false);

cell_x = 0;
cell_y = 0;
selected_unit = noone;

mode = mapMode.pan;