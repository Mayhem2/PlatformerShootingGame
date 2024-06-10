gunsprite=layer_sprite_get_id("Assets_1","gGun");
if(global.hasgun) or (global.kills>0){
	endtext[0]= "Player has killed "+string(global.kills)+" people";
	if(global.kills==1) endtext[0]= "Player has killed 1 person";
	endtext[1]="He was arrested 2 days later for manslaughter" ;	
	endtext[2]= "The end";
}
else
{
	layer_sprite_destroy(gunsprite);
	endtext[0]= "Player had a nice stroll through the park \n Without killing anyone";
	endtext[1]= "He reported the abandoned firearm and was thanked profusely";
	endtext[2]= "The end";
}
letters =0;
spd= 0.5;
currentline=0;
length = string_length(endtext[currentline]);
text="";