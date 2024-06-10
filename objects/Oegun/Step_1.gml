x=owner.x;
y=owner.y+10;

image_xscale=abs(owner.image_xscale);
image_yscale=abs(owner.image_yscale);

if(instance_exists(Oplayer)){
	if(Oplayer.x<x) image_yscale*=-1;
	if(point_distance(x,y,Oplayer.x,Oplayer.y)<600){
		image_angle=point_direction(x,y,Oplayer.x,Oplayer.y);
		countdown--
		if(countdown<=0){
			countdown=countdownre;
			if(!collision_line(x,y,Oplayer.x,Oplayer.y,Owall,false,false)){
				audio_play_sound(snShoot,5,false);
				with(instance_create_layer(x,y,"Bullets",Oebullet)){
					spd= 10;
					direction = other.image_angle + random_range(-3,+3);
					image_angle= direction;
				}
			}
		}
	}
}