/// @description Insert description here
// You can write your code in this editor


if (hp <= 0){
	
	with(instance_create_layer(x-50*image_xscale,y-30,"Layer_Enemy",obj_death)){
		image_xscale = obj_leo.image_xscale	
	}
	audio_play_sound(snd_playerDeath,0,0);
	instance_create_layer(x,y,"Layer_Enemy", obj_gameover)
	instance_destroy();
}
