if (light_on) {
	if (step_number mod 2 == 0)
		draw_set_color(c_lime);
	else
		draw_set_color($00C000);
}
else
	draw_set_color(c_green);
	
draw_circle(x+6,y+32,4,false);

draw_text(x+6,y+36,string(_this_pos));