#macro CELL_SIZE 16

global.grid_width = room_width div CELL_SIZE;
global.grid_height = room_height div CELL_SIZE;

map_grid = mp_grid_create(0,0,global.grid_width, global.grid_height, CELL_SIZE, CELL_SIZE);
mp_grid_add_instances(map_grid,obj_obstacle,false);

cell_x = 0;
cell_y = 0;

var _x = cell_x * CELL_SIZE;
var _y = cell_y * CELL_SIZE;

map_cursor = instance_create_layer(_x, _y,"UI",obj_map_cursor);
map_cursor.owner = id;
map_cursor.prev_x = _x;
map_cursor.prev_y = _y;
map_cursor.target_x = _x;
map_cursor.target_y = _y;

var _xx = 5;
var _yy = 5;

unit = instance_create_layer(_xx * CELL_SIZE, _yy * CELL_SIZE,"Units",obj_unit);
unit.cell_x = _xx;
unit.cell_y = _yy;