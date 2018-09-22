var _ac = obj_audio_controller.id;

do  {
	cur_step++;
} until (cur_step >= num_steps || attacker_notes[cur_step])
	
if (cur_step < num_steps) {
	var _prev_time = attacker_next_hit_time == -1 ? 0 : attacker_next_hit_time;
	
	attacker_next_hit_time = ((((_ac.phrase_number + phrases_to_next_battle) 
							 * num_steps) + cur_step) 
							 * _ac.time_per_step*step_scale + hit_offset) 
							 mod _ac.music_length;
	
	while (attacker_next_hit_time >= _ac.music_length) {
		attacker_next_hit_time -= _ac.music_length;
	}
	
	if (battle_state == battleState.waiting) {
		attacker_next_hit_in_next_phrase = true;
	}
	
	else {
		attacker_next_hit_in_next_phrase = attacker_next_hit_time < _prev_time;
	}
	
	attacker_tried = false;
}

else {
	attacker_next_hit_in_next_phrase = false;
	attacker_next_hit_time = -1;
	attacker_tried = true;
}