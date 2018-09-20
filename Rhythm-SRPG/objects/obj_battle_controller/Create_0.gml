show_self = false;

for (var i=0; i<obj_audio_controller.num_steps; i++) {
	attacker_notes[i] = false;
	defender_notes[i] = false;
}

attacker_notes[0] = true;
//attacker_notes[4] = true;
attacker_notes[8] = true;
//attacker_notes[12] = true;
attacker_notes[16] = true;
//attacker_notes[20] = true;
attacker_notes[24] = true;
//attacker_notes[28] = true;

defender_notes[2] = true;
defender_notes[6] = true;
defender_notes[10] = true;
defender_notes[14] = true;
defender_notes[18] = true;
defender_notes[22] = true;
defender_notes[26] = true;
defender_notes[30] = true;

attacker_id = noone;
defender_id = noone;

attacker_cur_note = 0;
attacker_next_hit_time = -1;
attacker_next_hit_in_next_phrase = false;
attacker_result_text = "";
attacker_just_hit = false;
attacker_flubbed = false;
atacker_force_next_note = false;
attacker_time_diff = -1;

// status
phrases_to_next_battle = 0;
battle_state = battleState.waiting;
battle_over = false;
show_countdown = false;
countdown = 5;

rhythm_chart_x = (320 - (note_size * obj_audio_controller.num_steps)) / 2;
rhythm_chart_y = 16;