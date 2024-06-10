// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function screenshake(){
	with(Ocamera){
		if(argument0>shake_remain){
			shake_max=argument0;
			shake_remain=shake_max;
			shake_length=argument1;
		}
	}
}