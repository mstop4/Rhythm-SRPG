// step
time_per_step = 60 / bpm  / 4;
step_number = 0;
phrase_number = 0;
num_steps = 32; 

// timing
timer = 0;
last_pos = 0;
dt = 0;
has_looped = false;
music_length = audio_sound_length(my_music);

// stats
step_ticker = false;
frame_counter = 0;
frames_per_step = 0;
light_on = false;
current_pos = 0;

print("Music Legnth: ", music_length);
bgm = audio_play_sound(my_music,100,true);
//audio_sound_gain(bgm,0,0);