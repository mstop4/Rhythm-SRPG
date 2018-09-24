cell_x = x div CELL_SIZE;
cell_y = y div CELL_SIZE;
prev_cell_x = cell_x;
prev_cell_y = cell_y;

selected = false;
my_state = unitState.ready;
show_range = false;
move_range_grid = ds_grid_create(global.grid_width,global.grid_height);
attack_range_grid = ds_grid_create(global.grid_width,global.grid_height);
local_attack_range_grid = ds_grid_create(global.grid_width,global.grid_height);

// stats
my_stats = ds_map_create();
ds_map_copy(my_stats, obj_MCP.unit_stats[| 0]);

//path
cur_path_node = 0;
max_path_node = 0;
prev_x = x;
prev_y = y;
target_x = x;
target_y = y;
is_moving = false;
can_move = false;

step_frame = [2, 2, 1, 0, 0, 0, 1, 2, 
			  2, 2, 1, 0, 0, 0, 1, 2,
			  2, 2, 1, 0, 0, 0, 1, 2, 
			  2, 2, 1, 0, 0, 0, 1, 2];

alarm[0] = 1;