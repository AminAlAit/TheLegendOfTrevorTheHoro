/// @description Insert description here
// You can write your code in this editor

if (collision_circle(x, y, 300, obj_leo, false, false)){
	
	obj_leo.abilityPunch = false;
	obj_leo.abilityFire = false;
	obj_leo.abilityWind = true;
	
	if (onlyOnce == true){
		obj_leo.sprite_index = spr_gainWind;
		obj_leo.alarm[5] = 15; // number of frames of gainwind, after that apply taunt
		//obj_leo.alarm[5] = 24; // another one
		with(instance_create_layer(x,y,"Layer_Enemy",obj_abilityText)){
			text = "WIND!";
		}
		with(instance_create_layer(x,y,"Layer_Enemy",obj_horo)){
			sprite_index = spr_wind;
		}
		
		audio_play_sound(snd_thunder,0,0);

		onlyOnce = false;
	}
}