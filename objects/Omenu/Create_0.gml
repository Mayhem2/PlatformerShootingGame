#macro SAVEFILE "save.sav"
game_set_speed(60,gamespeed_fps);
gui_width= display_get_gui_width();
gui_height= display_get_gui_height();
gui_margin =32;
menu_width=300;
intoside=200
menu_x = gui_width+menu_width;
menu_y = gui_height;
menu_xtarget = gui_width-gui_margin;
menu_speed=25;
menu_font= fMenu;
menu_font_size= font_get_size(menu_font);
menu_committed=-1;
menu_control= true;

menu[2]="New Game";
menu[1]="Continue";
menu[0]="Quit";

menu_cursor=2;
menu_range=array_length(menu);
menu_top = menu_y -((menu_font_size *1.5)*menu_range);