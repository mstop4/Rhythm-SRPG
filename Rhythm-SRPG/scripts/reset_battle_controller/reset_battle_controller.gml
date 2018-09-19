with (obj_battle_controller) {
	show_self = true;
	battle_state = battleState.waiting;
	countdown = 5;
				
	print("Step: ", obj_audio_controller.step_number);
	if (obj_audio_controller.step_number >= 12) {
		phrases_to_next_battle = 1;
	}
				
	else {
		phrases_to_next_battle = 0;
	}
}