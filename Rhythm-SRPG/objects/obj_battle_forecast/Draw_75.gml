if (show_self) {
	draw_set_font(fnt_pixel);
	draw_set_halign(fa_left);
	draw_set_color(c_silver);
	
	var _stats = obj_map_controller.selected_unit.my_stats;
	
	draw_text(0,0,"Player" +
				  "\nHP: " + string(_stats[? "hp"]) + "/" + string(_stats[? "hpMax"]) + 
				  "\nPhy Atk: " + string(_stats[? "phyAtk"]) +
				  "\nPhy Def: " + string(_stats[? "phyDef"]) +
				  "\nMag Atk: " + string(_stats[? "magAtk"]) +
				  "\nMag Def: " + string(_stats[? "magDef"]) +
				  "\nSpd: " + string(_stats[? "speed"]) +
				  "\nHit: " + string(_stats[? "hit"]) +
				  "\nEvd: " + string(_stats[? "evade"]));
				  
	_stats = obj_map_controller.target_unit.my_stats;
				  
	draw_set_halign(fa_right);
	draw_text(320,0,"Enemy" +
				  "\nHP: " + string(_stats[? "hp"]) + "/" + string(_stats[? "hpMax"]) + 
				  "\nPhy Atk: " + string(_stats[? "phyAtk"]) +
				  "\nPhy Def: " + string(_stats[? "phyDef"]) +
				  "\nMag Atk: " + string(_stats[? "magAtk"]) +
				  "\nMag Def: " + string(_stats[? "magDef"]) +
				  "\nSpd: " + string(_stats[? "speed"]) +
				  "\nHit: " + string(_stats[? "hit"]) +
				  "\nEvd: " + string(_stats[? "evade"]));
				  
	for (var i=0; i<obj_audio_controller.num_steps; i++) {
		if (obj_battle_controller.attacker_notes[i]) {
			draw_circle(rhythm_chart_x + i*note_size, rhythm_chart_y,2,false);
		} else {
			draw_circle(rhythm_chart_x + i*note_size, rhythm_chart_y,2,true);
		}

		if (obj_battle_controller.defender_notes[i]) {
			draw_circle(rhythm_chart_x + i*note_size, rhythm_chart_y+note_size+2,2,false);
		} else {
			draw_circle(rhythm_chart_x + i*note_size, rhythm_chart_y+note_size+2,2,true);
		}
	}
}