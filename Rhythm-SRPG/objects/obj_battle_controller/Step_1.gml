if (battle_state != battleState.over && show_self) {
	if (obj_audio_controller.step_ticker &&
		obj_audio_controller.step_number == 0) {
			
		if (battle_state == battleState.waiting) {
			print("Phrases left: ", phrases_to_next_battle);
	
			if (phrases_to_next_battle > 0) {
				phrases_to_next_battle--;
			}
		
			else {
				battle_state = battleState.battling;
				show_countdown = false;
			}
		}
		
		else {
			battle_state = battleState.over;
			obj_map_controller.alarm[0] = 60;
		}
	}
	
	if (battle_state == battleState.waiting &&
		phrases_to_next_battle == 0 &&
		obj_audio_controller.step_ticker &&
		obj_audio_controller.step_number >= 16 &&
		obj_audio_controller.step_number mod 4 == 0) {
	
		show_countdown = true;
		countdown--;
		print("Countdown: ", countdown); 
	}
}