if (light_on) {
	if (step_number mod 2 == 0)
		draw_set_color(c_lime);
	else
		draw_set_color($00C000);
}
else
	draw_set_color(c_green);
	
draw_circle(x+24,y+128,16,false);