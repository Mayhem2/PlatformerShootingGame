if(instance_exists(Oplayer)){
	if(point_in_circle(Oplayer.x,Oplayer.y,x,y,64)and arrow1==1){
		if(!instance_exists(Oarrow)){
			instance_create_layer(x,y-24,layer,Oarrow);
			}
	}
	else if (instance_exists(Oarrow)) instance_destroy(Oarrow);
}