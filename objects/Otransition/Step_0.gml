if(mode!=transmode.off)
{
	if(mode==transmode.intro){
		percent=max(0,percent-max(percent/10,0.005));	
	}
	else{
		percent=min(1.2,percent+max(((1.2-percent)/10),0.005));		
	}
	if(percent==0 || percent==1.2){
		switch(mode){
			case transmode.intro:
			{
				mode=transmode.off;
				break;
			}
			case transmode.next:
			{
				mode=transmode.intro;
				room_goto_next();
				break;
			}
			case transmode.goto:
			{
				mode=transmode.intro;
				room_goto(target);
				break;
			}
			case transmode.restart:
			{
				game_restart();
				break;
			}
		}
	}
}