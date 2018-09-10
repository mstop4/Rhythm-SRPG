if (show_turn_banner) {
	draw_set_font(fnt_big);
	draw_set_halign(fa_center);
	draw_set_valign(fa_center);
	
	switch (phase) {
		case team.player:
			draw_text(640,360,"Player Turn");
			break;
		case team.enemy:
			draw_text(640,360,"Enemy Turn");
			break;
		case team.ally:
			draw_text(640,360,"Ally Turn");
			break;
	}
}

draw_set_halign(fa_right);
draw_set_font(fnt_default);
draw_set_colour(c_white);
draw_text(1280,0,"Player: " + string(units_to_act[team.player]) + "/" + string(units_alive[team.player]) +
				 "\nEnemy: " + string(units_to_act[team.enemy]) + "/" + string(units_alive[team.enemy]) +
				 "\nAlly: " + string(units_to_act[team.ally]) + "/" + string(units_alive[team.ally]));