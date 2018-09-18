if (show_self) {
	for (var i=0; i<16; i++) {
		
		if (obj_audio_controller.step_number == i)
			draw_set_colour(c_red);
		else 
			draw_set_color(c_white);
		
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