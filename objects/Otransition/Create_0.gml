w = display_get_gui_width();
h= display_get_gui_height();
hhalf=h/2;
enum transmode{
	off,
	intro,
	next,
	goto,
	restart,	
}
mode = transmode.intro;
percent=1.2;
target = room;