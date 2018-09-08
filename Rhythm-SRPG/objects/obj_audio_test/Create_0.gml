time_per_beat = 60 / bpm;

timer = 0;
beat_ticker = false;
frame_counter = 0;
beat_frames = 0;
light_on = false;
last_pos = 0;
dt = 0;
sound_length = audio_sound_length(sound_index);

sound = audio_play_sound(sound_index,100,true);