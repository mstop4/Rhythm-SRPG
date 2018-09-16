unit_stats = ds_list_create();

var _unit = ds_map_create();
_unit[? "hpMax"] = 10;
_unit[? "hp"] = 10;
_unit[? "phyAtk"] = 2;
_unit[? "phyDef"] = 1;
_unit[? "magAtk"] = 2;
_unit[? "magDef"] = 1;
_unit[? "speed"] = 4;
_unit[? "hit"] = 5;
_unit[? "evade"] = 5;

ds_list_add(unit_stats,_unit);
ds_list_mark_as_map(unit_stats,0);