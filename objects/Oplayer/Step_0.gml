if(hascontrol){
	//variables
	key_left = keyboard_check(vk_left) || keyboard_check(ord("A"));
	key_right = keyboard_check(vk_right) || keyboard_check(ord("D"));
	key_space = keyboard_check_pressed(vk_space);
}
else{
	key_left =0;
	key_right=0;
	key_space=0;
}
var move= key_right-key_left;

//hsp and vsp
hsp = (move*walksp)+gunkickbackx;
gunkickbackx=0;
vsp = (vsp+grv)+gunkickbacky;
gunkickbacky=0;

//horizontal movement
if(place_meeting(x+hsp, y ,Owall)){
	while(!place_meeting(x+sign(hsp),y,Owall)){
		x=x+sign(hsp);
	}
	hsp=0;
}

x=x+hsp;
if(canjump>0)canjump--;
//vertical movement
if(canjump>0) and (key_space){
	vsp=-7
}

if(place_meeting(x, y+vsp ,Owall)){
	while(!place_meeting(x,y+sign(vsp),Owall)){
		y=y+sign(vsp);
	}
	vsp=0;
}

y=y+vsp;
//animations
var aimside= sign(mouse_x-x);
if(aimside!=0) image_xscale=aimside;
if(!place_meeting(x,y+1,Owall)){
	sprite_index=PlayerJ;
	image_speed=0;
	if(sign(vsp)>0) image_index=1;else image_index =0;
}
else{
	canjump=10;
	if (sprite_index== PlayerJ){ 
		audio_play_sound(snLanding,2,false);
		repeat(5){
			with(instance_create_layer(x,bbox_bottom,"Bullets",Odust)){
				vsp=0;
			}
		}
	}
	image_speed=1;
	if(hsp==0){
		sprite_index =Player;
	}
	else{
		sprite_index= PlayerR;
		if(aimside!=sign(hsp)) sprite_index= PlayerSr;
	}
}