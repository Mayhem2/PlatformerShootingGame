cam= view_camera[0];
follow=Oplayer;
halfw=camera_get_view_width(cam) *0.5;
halfh=camera_get_view_height(cam) *0.5;
xto=xstart;
yto=ystart;
mountainlayer=layer_get_id("mountain");
treeslayer=layer_get_id("trees");
shake_length=0;
shake_max=0;
shake_remain=0;
buff=32;