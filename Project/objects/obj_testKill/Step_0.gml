/// @description Insert description here
// You can write your code in this editor

if (collision_circle(x, y, 300, obj_leo, false, false)){
	
	obj_leo.abilityPunch = false;
	obj_leo.abilityFire = true;
	obj_leo.abilityWind = false;
	
	if (onlyOnce == true){
		obj_leo.sprite_index = spr_gainFire;
		obj_leo.alarm[5] = 15;
		
		with(instance_create_layer(x,y,"Layer_Enemy",obj_abilityText)){
			text = "FIRE!"
		}
		onlyOnce = false;
	}
}