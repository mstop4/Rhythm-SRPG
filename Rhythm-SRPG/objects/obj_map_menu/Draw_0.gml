if (show_menu) {
	draw_set_colour(c_green);
	draw_rectangle(x,y,x+64,y+32,false);
	draw_set_colour(c_white);
	draw_set_font(fnt_pixel);
	draw_text(x,y,"wait");
}