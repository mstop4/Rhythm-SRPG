if (battle_started) {
	if (keyboard_check_pressed(vk_space)) {
		
		var _num = instance_create_layer(global.camera_w/2,global.camera_h/2-32,"UI",obj_damage_number);
		
		if (attacker_next_hit_time != -1 && 
			abs(attacker_time_diff) < attack_window) {
				
			attacker_result_text = "Hit - " + string(attacker_time_diff);
			_num.value = 2;
			effect_create_above(ef_explosion,global.camera_x+global.camera_w/2,global.camera_y+global.camera_h/2,0,c_red);
			print("Hit: ", string_format(attacker_time_diff,1,5));
		}
		
		else {
			attacker_result_text = "Miss - " + string(attacker_time_diff);
			_num.value = "MISS";
			effect_create_above(ef_spark,global.camera_x+global.camera_w/2,global.camera_y+global.camera_h/2,2,c_red);
		
			print("Miss: ", string_format(attacker_time_diff,1,5));
		}
		
		alarm[0] = 10;
	}
}