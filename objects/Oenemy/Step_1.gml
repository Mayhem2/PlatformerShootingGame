if(hp<=0){
	audio_sound_pitch(snDeath,(1/(size/1.2)));
	audio_play_sound(snDeath,10,false);
	with(instance_create_layer(x,y,layer,Oenemydead)){
		direction=other.hitfrom;
		hsp=lengthdir_x(4,direction);
		vsp=lengthdir_y(4,direction)-2;
		image_xscale=sign(hsp)*other.size;
		image_yscale=other.size;
	}
	with(mygun) instance_destroy();
	if(instance_exists(Oplayer)){
		global.kills++
		global.killsthisroom++
		with(Ogame) textscale=1.5;	
	}
	instance_destroy();
}
