if (show_self) {
	
	var _bc = obj_battle_controller.id;
	
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
				  
	for (var i=0; i<_bc.num_steps; i++) {
		if (_bc.attacker_notes[i]) {
			draw_sprite(spr_attacker_lamp,1,_bc.rhythm_chart_x + i*_bc.note_size*2, _bc.rhythm_chart_y);
		} else {
			draw_sprite(spr_attacker_lamp,0,_bc.rhythm_chart_x + i*_bc.note_size*2, _bc.rhythm_chart_y);
		}

		if (_bc.defender_notes[i]) {
			draw_sprite(spr_attacker_lamp,1,_bc.rhythm_chart_x + i*_bc.note_size*2, _bc.rhythm_chart_y+_bc.note_size+2);
		} else {
			draw_sprite(spr_attacker_lamp,0,_bc.rhythm_chart_x + i*_bc.note_size*2, _bc.rhythm_chart_y+_bc.note_size+2);
		}
	}
}