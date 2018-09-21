if (battle_state == battleState.battling) {
	if (keyboard_check_pressed(vk_space)) {
		if (attacker_next_hit_time != -1 && abs(attacker_time_diff) < attack_window) {
			attacker_result_text = "Hit - " + string(attacker_time_diff);
			effect_create_above(ef_explosion,global.camera_x+global.camera_w/2,global.camera_y+global.camera_h/2,0,c_red);
		}
		else {
			attacker_result_text = "Miss - " + string(attacker_time_diff);
			effect_create_above(ef_spark,global.camera_x+global.camera_w/2,global.camera_y+global.camera_h/2,2,c_red);
		}
		alarm[0] = 10;
	}
}