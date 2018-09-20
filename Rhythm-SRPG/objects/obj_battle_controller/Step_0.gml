if (battle_state == battleState.battling) {
	if (keyboard_check_pressed(vk_space)) {
		if (attacker_next_hit_time != -1 && abs(attacker_time_diff) < attack_window)
			attacker_result_text = "Hit";
		else
			attacker_result_text = "Miss";
			
		alarm[0] = 10;
	}
}