draw_set_font(fnt_big);
draw_set_color(c_white);
draw_text(x,y,"Beat: " + string(beat_ticker));
draw_text(x,y+32,"Frames per Beat: " + string(beat_frames));

draw_text(x,y+64,"time per Beat: " + string(time_per_beat) + "ms");
draw_text(x,y+96,"Delta time: " + string(dt) + "ms");

if (light_on)
	draw_set_color(c_lime);

else
	draw_set_color(c_green);
	
draw_circle(x+24,y+128,16,false);