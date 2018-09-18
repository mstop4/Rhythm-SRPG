if (step_ticker)
	step_ticker = false;
	
var _this_pos = audio_sound_get_track_position(bgm);
if (_this_pos >= last_pos) 
	dt = _this_pos - last_pos;
else
	dt = _this_pos + sound_length - last_pos;
	
timer += dt;
last_pos = _this_pos;

if (timer >= time_per_step) {
	step_ticker = true;
	timer -= time_per_step;
	frames_per_step = frame_counter;
	frame_counter = 0;
	light_on = true;
	step_number = wrap(step_number+1,0,num_steps-1);
	alarm[0] = 3;
}

frame_counter++;