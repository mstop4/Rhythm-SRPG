var _ac = obj_audio_controller.id;

with (obj_battle_controller) {
	show_self = true;
	battle_state = battleState.waiting;
	countdown = 5;
	cur_step = -1;
	
	attacker_cur_note = 0;
	attacker_next_hit_time = -1;
	attacker_next_hit_in_next_phrase = false;
	attacker_result_text = "";
	attacker_just_hit = false;
	attacker_flubbed = false;
	atacker_force_next_note = false;
	attacker_time_diff = -1;
				
	print("Step: ", _ac.step_number);
	if (_ac.step_number >= 12) {
		phrases_to_next_battle = 1;
	}
				
	else {
		phrases_to_next_battle = 0;
	}
	
	battle_get_next_note_time();
}