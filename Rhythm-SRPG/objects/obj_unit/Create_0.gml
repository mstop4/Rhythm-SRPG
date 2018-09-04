cell_x = 0;
cell_y = 0;
selected = false;
my_path = path_add();
move_range_grid = ds_grid_create(global.grid_width,global.grid_height);
attack_range_grid = ds_grid_create(global.grid_width,global.grid_height);
my_state = unitState.ready;

show_range = false;

alarm[0] = 1;