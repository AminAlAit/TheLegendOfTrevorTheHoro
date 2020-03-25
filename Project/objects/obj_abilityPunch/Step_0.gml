/// @description Insert description here
// You can write your code in this editor

if (collision_circle(x, y, 300, obj_leo, false, false)){
	
	obj_leo.abilityPunch = true;
	obj_leo.abilityFire = false;
	obj_leo.abilityWind = false;
	
	if (onlyOnce == true){
		with(instance_create_layer(x,y,"Layer_Enemy",obj_abilityText)){
			text = "PUNCH!";
		}
		with(instance_create_layer(x,y,"Layer_Enemy",obj_horo)){
			sprite_index = spr_strength;
		}
		onlyOnce = false;
	}
}
