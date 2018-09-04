var _temp = path_add();
mp_grid_path(map_grid,_temp,8,8,24,40,false);
print(path_get_length(_temp));
path_delete(_temp);