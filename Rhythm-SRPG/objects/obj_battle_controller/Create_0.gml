show_self = false;

for (var i=0; i<16; i++) {
	attacker_notes[i] = false;
	defender_notes[i] = false;
}

attacker_notes[0] = true;
attacker_notes[4] = true;
attacker_notes[8] = true;
attacker_notes[12] = true;

defender_notes[2] = true;
defender_notes[6] = true;
defender_notes[10] = true;
defender_notes[14] = true;

attacker_id = noone;
defender_id = noone;

rhythm_chart_x = (320 - (note_size * 16)) / 2;
rhythm_chart_y = 16;