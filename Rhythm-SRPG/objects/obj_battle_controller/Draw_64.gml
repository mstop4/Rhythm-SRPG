if (show_self) {
	draw_set_color(c_black);
	draw_set_font(fnt_pixel);
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	
	draw_text(0,0,"Time Diff: " + string(attacker_time_diff));
	draw_text(0,16,"Next Hit: " + string(attacker_next_hit_time));
	draw_text(0,32,"Next Step: " + string(cur_step));
	
	draw_text(0,48,attacker_result_text);
	
	for (var i=0; i<num_steps; i++) {
	
		if (show_countdown) {
			draw_text(160,rhythm_chart_y-16,string(countdown));
		}
		
		if (obj_battle_controller.attacker_notes[i]) {
			draw_sprite(spr_attacker_lamp,1,rhythm_chart_x + i*note_size*2, rhythm_chart_y);
		} else {
			draw_sprite(spr_attacker_lamp,0,rhythm_chart_x + i*note_size*2, rhythm_chart_y);
		}

		if (obj_battle_controller.defender_notes[i]) {
			draw_sprite(spr_attacker_lamp,1,rhythm_chart_x + i*note_size*2, rhythm_chart_y+note_size+2);
		} else {
			draw_sprite(spr_attacker_lamp,0,rhythm_chart_x + i*note_size*2, rhythm_chart_y+note_size+2);
		}
	}
	
	if (battle_started) {
		var _xx = lerp(rhythm_chart_x,rhythm_chart_x_end,phrase_time_elapsed/phrase_length);
		draw_line(_xx,rhythm_chart_y-4,_xx,rhythm_chart_y+note_size+2+4);
	}
}