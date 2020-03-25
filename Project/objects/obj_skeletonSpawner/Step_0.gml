/// @description Insert description here
// You can write your code in this editor

if ((collision_circle(x, y, 64, obj_leo, false, false) || doIt = true) && spawn >= 1){
	
	sprite_index = spr_skelRise;
	doIt = true;
	if (image_index > image_number -1){
	
		with(instance_create_layer(x,y,"Layer_Enemy",obj_skeleton)){
			if(random(1)<0.6){
				hp = 1;
				sprite_index = spr_skelWalkEasy;
				points = 1;
			}
			else if(random(1)<0.75){
				hp = 3;
				sprite_index = spr_skelWalkMed;
				points = 3;
			}
			else{
				hp = 5;
				sprite_index = spr_skelWalkHard;
				points = 5;
			}
		}
		child = instance_create_layer(x + random_range(-250,250),y,"Layer_Enemy",obj_skeletonSpawner);
		child.spawn = spawn - 1;
		child.doIt = true;
		
		instance_destroy();
	}

}