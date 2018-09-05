cell_x = x div CELL_SIZE;
cell_y = y div CELL_SIZE;
selected = false;
my_path = path_add();
move_range_grid = ds_grid_create(global.grid_width,global.grid_height);
attack_range_grid = ds_grid_create(global.grid_width,global.grid_height);
my_state = unitState.ready;

show_range = false;

alarm[0] = 1;