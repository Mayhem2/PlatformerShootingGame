if (instance_exists(follow)){
	xto=follow.x;
	yto=follow.y;
}
x+= (xto-x)/25;
y+= (yto-y)/25;

x=clamp(x,halfw+buff, room_width-halfw-buff);
y=clamp(y,halfh+buff, room_height-halfh-buff);

x+=random_range(-shake_remain,shake_remain);
y+=random_range(-shake_remain,shake_remain);
shake_remain=max(0,shake_remain-((1/shake_length)*shake_max));

camera_set_view_pos(cam,x-halfw,y-halfh);

if (layer_exists(mountainlayer)){
	layer_x(mountainlayer,x/2);	
}
if (layer_exists(treeslayer)){
	layer_x(treeslayer,x/4);	
}