if (beat_ticker)
	beat_ticker = false;
	
var _this_pos = audio_sound_get_track_position(sound);
if (_this_pos >= last_pos) 
	dt = _this_pos - last_pos;
else
	dt = _this_pos + sound_length - last_pos;
	
timer += dt;
last_pos = _this_pos;

if (timer >= time_per_beat) {
	beat_ticker = true;
	timer -= time_per_beat;
	beat_frames = frame_counter;
	frame_counter = 0;
	light_on = true;
	alarm[0] = 5;
}

frame_counter++;