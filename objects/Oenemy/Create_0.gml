if(hasweapon){
	mygun=instance_create_layer(x,y,"Gun",Oegun);
	with(mygun){
		owner=other.id	
	}
}
else mygun =noone;