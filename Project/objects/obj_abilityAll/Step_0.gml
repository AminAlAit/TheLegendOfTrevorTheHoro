/// @description Insert description here
// You can write your code in this editor

if (collision_circle(x, y, 300, obj_leo, false, false)){
	
	obj_leo.abilityPunch = true;
	obj_leo.abilityFire = true;
	obj_leo.abilityWind = true;
	
	if (onlyOnce == true){
		with(instance_create_layer(x,y,"Layer_Enemy",obj_abilityText)){
			text = "ALL!"
		}
		onlyOnce = false;
	}
}
