if (show_turn_banner) {
	draw_set_font(fnt_big);
	draw_set_halign(fa_center);
	draw_set_valign(fa_center);
	draw_set_colour(c_white);
	
	switch (phase) {
		case team.player:
			draw_text(160,90,"Player Turn");
			break;
		case team.enemy:
			draw_text(160,90,"Enemy Turn");
			break;
		case team.ally:
			draw_text(160,90,"Ally Turn");
			break;
	}
}

draw_set_halign(fa_right);
draw_set_valign(fa_top);
draw_set_font(fnt_pixel);
draw_set_colour(c_white);
draw_text(320,0,"Player: " + string(units_to_act[team.player]) + "/" + string(units_alive[team.player]) +
				 "\nEnemy: " + string(units_to_act[team.enemy]) + "/" + string(units_alive[team.enemy]) +
				 "\nAlly: " + string(units_to_act[team.ally]) + "/" + string(units_alive[team.ally]));
				 
/*draw_set_halign(fa_left);
draw_text(0,0,"Camera Target: " + string(camera_target) +
				 "\nX: " + string(_goal_x) +
				 "\nY: " + string(_goal_y));*/