/*cur_order = FMODGMS_Chan_Get_ModOrder(channel);
cur_row = FMODGMS_Chan_Get_ModRow(channel);
cur_step = cur_row div 2;

if (cur_row == 0)
	is_new_order = false;

if (force_next_note || (cur_row - next_row_to_hit >= 2 && !is_new_order)) {
	flubbed = false;
	force_next_note = false;
	var i = 0;
	var notes_length = ds_list_size(notes);
	
	while (true) {
		i++;
		if (i >= notes_length) {
			is_new_order = true;
			next_row_to_hit = notes[| 0];
			break;
		}
		
		if (notes[| i] > next_row_to_hit) {
			next_row_to_hit = notes[| i];
			break;
		}
	}
}*/