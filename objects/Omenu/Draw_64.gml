draw_set_font(menu_font);
draw_set_halign(fa_right);
draw_set_valign(fa_bottom);

for(var i=0; i<menu_range; i++){
	var offset =2;
	var txt= menu[i];
	var color = c_grey;
	if(menu_cursor=i)
	{
		txt=string_insert("> ",txt,0);
		color= c_white;
	}
	var xx = menu_x;
	var yy = menu_y-(menu_font_size*(i*1.5));
	draw_set_color(c_black);
	draw_text(xx+offset,yy,txt);
	draw_text(xx,yy+offset,txt);
	draw_set_color(color);
	draw_text(xx,yy,txt);
}
draw_set_color(c_black);
draw_rectangle(gui_width,menu_top,gui_width+intoside,gui_height,false);
