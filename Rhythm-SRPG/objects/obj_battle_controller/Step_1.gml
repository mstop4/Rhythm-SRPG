if (!is_battling && show_self) {
	if (obj_audio_controller.step_ticker &&
		obj_audio_controller.step_number == 0) {
	
		print("Phrases left: ", phrases_to_next_battle);
	
		if (phrases_to_next_battle > 0) {
			phrases_to_next_battle--;
		}
		
		else {
			is_battling = true;
			show_countdown = false;
		}
	}
	
	if (phrases_to_next_battle == 0 &&
		obj_audio_controller.step_ticker &&
		obj_audio_controller.step_number >= 16 &&
		obj_audio_controller.step_number mod 4 == 0) {
	
		show_countdown = true;
		countdown--;
		print("Countdown: ", countdown); 
	}
}