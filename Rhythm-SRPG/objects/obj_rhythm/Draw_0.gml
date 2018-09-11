/*draw_set_font(fnt_default);
draw_set_colour(c_white);
draw_text(x,y,"FMOD-GMS2 Sync Test");

for (var i=0; i<32; i++) {
	var beat = i mod 16;
	
	if (beat mod 4 == 0)
		draw_set_colour($FFC080);
	else if (beat mod 2 == 0)
		draw_set_colour($A0A0A0);
	else
		draw_set_colour($505050);
		
	draw_circle(x+24*i,y+64,8,false);
}

draw_set_colour(c_white);
draw_text(x,y+88,"Order: " + string(cur_order) + "\nRow: " + string(cur_row));

//Beat detection
draw_arrow(x+cur_step*24,y+32,x+cur_step*24,y+52,12);

if (cur_step mod 4 == 0) 
	draw_set_colour(c_lime);
else 
	draw_set_colour(c_green);
	
draw_circle(x+128,y+96,16,false);

if (just_hit)
	draw_set_colour($FFC080);
else 
	draw_set_colour($FF8000);
	
draw_set_font(fnt_big);
draw_text(x,y+128,result_text);

//draw_text(x,y+128,"Next row to hit: " + string(next_row_to_hit));*/