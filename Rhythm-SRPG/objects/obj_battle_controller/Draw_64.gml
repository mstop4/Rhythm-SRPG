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
		
		if (battle_state == battleState.battling) {
			if (obj_audio_controller.step_number div 2 == i)
				draw_set_colour(c_red);
			else 
				draw_set_color(c_white);
		}
		
		else
			draw_set_color(c_white);
	
		if (show_countdown) {
			draw_text(160,rhythm_chart_y-16,string(countdown));
		}
		
		if (obj_battle_controller.attacker_notes[i]) {
			draw_circle(rhythm_chart_x + i*note_size*2, rhythm_chart_y,2,false);
		} else {
			draw_circle(rhythm_chart_x + i*note_size*2, rhythm_chart_y,2,true);
		}

		if (obj_battle_controller.defender_notes[i]) {
			draw_circle(rhythm_chart_x + i*note_size*2, rhythm_chart_y+note_size+2,2,false);
		} else {
			draw_circle(rhythm_chart_x + i*note_size*2, rhythm_chart_y+note_size+2,2,true);
		}
	}
}