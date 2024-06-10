if ((room!=Menu) && (instance_exists(Oplayer)) && (global.kills>0)){
	textscale=max(textscale*0.95,1);
	DrawSetText(c_black,fMenu,fa_right,fa_top);
	draw_text_transformed(RES_W-8,12,string(global.kills)+" Murders :)",textscale,textscale,0);
	draw_set_color(c_white);
	draw_text_transformed(RES_W-10,10,string(global.kills)+" Murders :)",textscale,textscale,0);
}