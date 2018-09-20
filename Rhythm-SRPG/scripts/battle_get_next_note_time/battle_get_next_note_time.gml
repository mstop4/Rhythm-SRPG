var _ac = obj_audio_controller.id;

do  {
	//print("Step up");
	cur_step++;
} until (cur_step >= _ac.num_steps || attacker_notes[cur_step])
	
if (cur_step < _ac.num_steps) {
	/*print("Music Length: ",string_format(_ac.music_length,15,15));
	print("Phrase Number: ", _ac.phrase_number);
	print("Phrase Next: ", phrases_to_next_battle);
	print("Num Steps: ", _ac.num_steps);*/
	print("Cur Step: ", cur_step);
	/*print("Time Per Step: ", string_format(_ac.time_per_step,15,15));*/
	
	var _prev_time = attacker_next_hit_time;
	
	attacker_next_hit_time = ((((_ac.phrase_number + phrases_to_next_battle) * _ac.num_steps) + cur_step) * _ac.time_per_step) mod _ac.music_length;
	while (attacker_next_hit_time >= _ac.music_length) {
		attacker_next_hit_time -= _ac.music_length;
	}
							 
	print("Next Time: ", attacker_next_hit_time);
	
	attacker_next_hit_in_next_phrase = attacker_next_hit_time < _prev_time;
}

else {
	attacker_next_hit_in_next_phrase  = false;
	attacker_next_hit_time = -1;
}