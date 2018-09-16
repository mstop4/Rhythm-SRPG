if (show_self) {
	draw_set_font(fnt_pixel);
	draw_set_halign(fa_left);
	draw_set_color(c_white);
	
	var _stats = obj_map_controller.selected_unit.my_stats;
	
	draw_text(0,0,"Battle Forecast" +
				  "\nHP: " + string(_stats[? "hp"]) + "/" + string(_stats[? "hpMax"]) + 
				  "\nPhy Atk: " + string(_stats[? "phyAtk"]) +
				  "\nPhy Def: " + string(_stats[? "phyDef"]) +
				  "\nMag Atk: " + string(_stats[? "magAtk"]) +
				  "\nMag Def: " + string(_stats[? "magDef"]) +
				  "\nSpd: " + string(_stats[? "speed"]) +
				  "\nHit: " + string(_stats[? "hit"]) +
				  "\nEvd: " + string(_stats[? "evade"]));
}