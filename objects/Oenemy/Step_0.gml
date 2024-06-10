vsp = vsp+grv;
//ledge check
if((grounded) and (afraidofheights) and (!place_meeting(x+hsp,y+1,Owall))){
	hsp=-hsp;	
}

//horizontal movement
if(place_meeting(x+hsp, y ,Owall)){
	while(!place_meeting(x+sign(hsp),y,Owall)){
		x=x+sign(hsp);
	}
	hsp=-hsp;
}

x=x+hsp;


if(place_meeting(x, y+vsp ,Owall)){
	while(!place_meeting(x,y+sign(vsp),Owall)){
		y=y+sign(vsp);
	}
	vsp=0;
}

y=y+vsp;

if(!place_meeting(x,y+1,Owall)){
	grounded = false;
	sprite_index=enemyJ;
	image_speed=0;
	if(sign(vsp)>0) image_index=1;else image_index =0;
}
else{
	grounded=true;
	image_speed=1;
	if(hsp==0){
		sprite_index =enemy;
	}
	else{
		sprite_index= enemyR;
	}
}
if (hsp!=0) image_xscale=sign(hsp)*size;
image_yscale=size;