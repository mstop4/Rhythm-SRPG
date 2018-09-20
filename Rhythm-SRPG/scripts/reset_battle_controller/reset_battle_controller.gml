var _ac = obj_audio_controller.id;

with (obj_battle_controller) {
	show_self = true;
	battle_state = battleState.waiting;
	countdown = 5;
				
	print("Step: ", _ac.step_number);
	if (_ac.step_number >= 12) {
		phrases_to_next_battle = 1;
	}
				
	else {
		phrases_to_next_battle = 0;
	}
	
	cur_step = -1;
	battle_get_next_note_time();
}