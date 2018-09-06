if (new_row_ticker)
	new_row_ticker = false;
	
cur_row = FMODGMS_Chan_Get_ModRow(channel);
if (cur_row != prev_row && !new_row_ticker) {
	new_row_ticker = true;
	prev_row = cur_row;
}