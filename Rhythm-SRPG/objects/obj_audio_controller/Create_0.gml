// step
time_per_step = 60 / bpm  / 2;
step_number = 0;
num_steps = 8; 

// timing
timer = 0;
last_pos = 0;
dt = 0;
sound_length = audio_sound_length(my_music);

// stats
step_ticker = false;
frame_counter = 0;
step_frames = 0;
light_on = false;

bgm = audio_play_sound(my_music,100,true);