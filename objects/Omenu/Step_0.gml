menu_x+=(menu_xtarget - menu_x)/menu_speed;

if (menu_control){
	if (keyboard_check_pressed(vk_down)||keyboard_check_pressed(ord("S"))){
		menu_cursor--;
		if(menu_cursor<0) menu_cursor=2;
	}	
	if (keyboard_check_pressed(vk_up)||keyboard_check_pressed(ord("W"))){
		menu_cursor++;
		if(menu_cursor>=menu_range) menu_cursor=0;
	}
	if (keyboard_check_pressed(vk_enter)){
		menu_xtarget = gui_width+intoside;
		menu_committed = menu_cursor;
		audio_sound_pitch(snDeath,1);
		audio_play_sound(snDeath,10,false);
		screenshake(4,30);
		menu_control=false;
	}
	var mouse_y_gui = device_mouse_y_to_gui(0);
	var mouse_x_gui = device_mouse_x_to_gui(0);
	if((mouse_y_gui<menu_y) and (mouse_y_gui>menu_top) and (mouse_x_gui>menu_x-menu_width+50)){
		menu_cursor=(menu_y-mouse_y_gui) div (menu_font_size * 1.5);
		if (mouse_check_button(mb_left)){
			menu_xtarget = gui_width+intoside;
			menu_committed = menu_cursor;
			audio_sound_pitch(snDeath,1);
			audio_play_sound(snDeath,10,false);
			screenshake(4,30);
			menu_control=false;
		}	
	}
}
if ((menu_x>gui_width+intoside-100) && (menu_committed!=-1)){
	switch (menu_committed){
		case 2 : default: slidetransition(transmode.next); break;
		case 1 : {
			if(!file_exists(SAVEFILE)){
				slidetransition(transmode.next); 
			}
			var file = file_text_open_read(SAVEFILE);
			target= file_text_read_real(file);
			global.kills=file_text_read_real(file);
			global.hasgun=file_text_read_real(file);
			file_text_close(file);
			slidetransition(transmode.goto, target);
		}
		break;
		case 0 : game_end();
	}
}