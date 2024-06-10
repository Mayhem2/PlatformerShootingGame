/// @description Insert description here
// You can write your code in this editor
hsp =3;
vsp =-4;
grv=0.4
done=0;
screenshake(8,60);
audio_sound_pitch(snDeath,1);
audio_play_sound(snDeath,10,false);
image_speed=0;
image_index=0;
game_set_speed(30,gamespeed_fps);
with(Ocamera) follow=other.id;
if(sign(hsp)!=0) image_xscale=sign(hsp);

