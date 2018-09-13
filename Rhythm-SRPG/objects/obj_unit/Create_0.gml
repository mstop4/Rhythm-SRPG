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

//path
cur_path_node = 0;
max_path_node = 0;
prev_x = x;
prev_y = y;
target_x = x;
target_y = y;
is_moving = false;
can_move = false;

alarm[0] = 1;