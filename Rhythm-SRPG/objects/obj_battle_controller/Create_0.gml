show_self = false;

if (attack_window*2 > obj_audio_controller.time_per_step*step_scale) {
	print("WARNING: attack window is long: ", attack_window*2, "s. Needs to be no more than ", obj_audio_controller.time_per_step*step_scale, "s.");
}

else {
	print("Attack window OK: ", attack_window*2, "s. Needs to be no more than ", obj_audio_controller.time_per_step*step_scale, "s.");
}

num_steps = obj_audio_controller.num_steps/step_scale;

for (var i=0; i<num_steps; i++) {
	attacker_notes[i] = false;
	defender_notes[i] = false;
}

attacker_notes[0] = true;
//attacker_notes[2] = true;
attacker_notes[4] = true;
//attacker_notes[6] = true;
attacker_notes[8] = true;
//attacker_notes[10] = true;
attacker_notes[12] = true;
//attacker_notes[14] = true;

defender_notes[1] = true;
defender_notes[3] = true;
defender_notes[5] = true;
defender_notes[7] = true;
defender_notes[9] = true;
defender_notes[11] = true;
defender_notes[13] = true;
defender_notes[15] = true;

attacker_id = noone;
defender_id = noone;

attacker_cur_note = 0;
attacker_next_hit_time = -1;
attacker_next_hit_in_next_phrase = false;
attacker_result_text = "";
attacker_tried = false;
attacker_time_diff = -1;

// status
phrases_to_next_battle = 0;
battle_state = battleState.waiting;
show_countdown = false;
countdown = 5;
battle_started = false;
phrase_time_elapsed = 0;
phrase_length = obj_audio_controller.time_per_step * obj_audio_controller.num_steps;

rhythm_chart_x = (320 - (note_size * num_steps * 2)) / 2;
rhythm_chart_x_end = (320 + (note_size * num_steps * 2)) / 2;
rhythm_chart_y = 16;