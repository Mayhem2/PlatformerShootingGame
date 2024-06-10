layer_x("Assets_1",min(layer_get_x("Assets_1")+1,RES_W*0.5-32));

letters+=spd;
text=string_copy(endtext[currentline],1,floor(letters));

if (letters>=length) and (keyboard_check_pressed(vk_anykey)){
	if(currentline+1==array_length(endtext)) slidetransition(transmode.restart);
	else{
		currentline++;
		letters=0;
		length= string_length(endtext[currentline]);		
	}
	
}