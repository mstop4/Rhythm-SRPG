if (step_ticker)
	step_ticker = false;
	
current_pos = audio_sound_get_track_position(bgm);
if (current_pos >= last_pos) {
	has_looped = false;
	dt = current_pos - last_pos;
}
else {
	has_looped = true;
	dt = current_pos + music_length - last_pos;
}
	
timer += dt;
last_pos = current_pos;

if (timer >= time_per_step) {
	step_ticker = true;
	timer -= time_per_step;
	
	frames_per_step = frame_counter;
	frame_counter = 0;
	
	step_number = wrap(step_number+1,0,num_steps-1);
	if (step_number == 0)
		phrase_number++;
	
		light_on = true;
	alarm[0] = 3;
}

frame_counter++;