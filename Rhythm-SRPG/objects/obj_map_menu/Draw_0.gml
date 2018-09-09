if (show_menu) {
	draw_set_colour(c_green);
	draw_rectangle(x,y,x+menu_width,y+menu_height,false);
	draw_set_colour(c_white);
	draw_set_font(fnt_pixel);
	
	for (var i=0; i<ds_list_size(item_names); i++) {
		draw_text(x+16,y+16*i,item_names[| i]);	
	}
	
	draw_text(x,y+16*cursor_pos,">");
}