cell_x = 0;
cell_y = 0;
selected = false;
my_path = path_add();
my_range = ds_grid_create(global.grid_width,global.grid_height);
my_state = unitState.ready;

show_range = true;

alarm[0] = 1;