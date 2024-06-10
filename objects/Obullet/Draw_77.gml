x+=lengthdir_x(spd,direction);
y+=lengthdir_y(spd,direction);

if(place_meeting(x,y,Oshootable)){
	with(instance_place(x,y,Oshootable)){
		flash=4;
		hp--;
		hitfrom=other.direction;
	}
instance_destroy();
	
}



if (place_meeting(x,y,Owall)){
	instance_change(Ohitspark,true);
	layer_add_instance("Tiles_1",id);
	depth+=1
}