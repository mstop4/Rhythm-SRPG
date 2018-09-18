if (is_moving) {
	if (can_move) {
		x = lerp(target_x,prev_x,alarm[1]/path_step_time);
		y = lerp(target_y,prev_y,alarm[1]/path_step_time);
	}
	
	else if //(obj_audio_controller.step_ticker) { 
		(obj_audio_controller.frame_counter == obj_audio_controller.frames_per_step - path_step_time){
		path_next_rhythm();
	}
}