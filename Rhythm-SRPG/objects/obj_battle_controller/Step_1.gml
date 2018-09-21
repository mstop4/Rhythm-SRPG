if (show_self) {
	
	switch (battle_state) {

		case battleState.waiting:
			// phrase counter
			if (obj_audio_controller.step_ticker &&
				obj_audio_controller.step_number == 0) {
	
				if (phrases_to_next_battle > 0) {
					phrases_to_next_battle--;
				}
		
				else {
					battle_state = battleState.battling;
					show_countdown = false;
				}
			}
	
			//countdown
			if (battle_state == battleState.waiting &&
				phrases_to_next_battle == 0 &&
				obj_audio_controller.step_ticker &&
				obj_audio_controller.step_number >= 16 &&
				obj_audio_controller.step_number mod 4 == 0) {
	
				show_countdown = true;
				countdown--;
			}
		
			break;
		
		case battleState.battling:
			// end battle
			if (obj_audio_controller.step_ticker) {
				if (obj_audio_controller.step_number == 0) {
					battle_state = battleState.over;
					obj_map_controller.alarm[0] = 60;
				}
			}
			
			if (attacker_next_hit_time != -1) {
				if (obj_audio_controller.has_looped) {
					attacker_next_hit_in_next_phrase = false;
				}
				
				attacker_time_diff = obj_audio_controller.current_pos - attacker_next_hit_time;
				if (attacker_next_hit_in_next_phrase) {
					attacker_time_diff -= obj_audio_controller.music_length;
				}
				
				if (attacker_time_diff > attack_window) {
					battle_get_next_note_time();
				}
			}
		
			break;
	}
}