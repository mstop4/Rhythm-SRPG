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
	
	for (cur_step = 0; cur_step<obj_audio_controller.num_steps && cur_step < obj_audio_controller.num_steps; cur_step++) {
		if (attacker_notes[cur_step]) 
			break;
	}
	
	attacker_next_hit_time = (obj_audio_controller.phrase_number + obj_audio_controller.phrases_to_next_battle) *
							 ((obj_audio_controller.num_steps + cur_step)* obj_audio_controller.time_per_step);
}