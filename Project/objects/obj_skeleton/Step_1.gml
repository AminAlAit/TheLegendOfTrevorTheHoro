/// @description Insert description here
// You can write your code in this editor

canHurt--;

if (hp <= 0){
	instance_create_layer(x,y,"Layer_Enemy",obj_skelSkull);
	instance_create_layer(x,y,"Layer_Enemy",obj_skelRibcage);
	
	for( i = 0; i <5; i++)
		instance_create_layer(x,y,"Layer_Enemy",obj_skelBone);
	
	obj_leo.theScore += points;
	if (random(1) < 0.1)
		audio_play_sound(snd_skelDeath3,0,0);
	else{
		if (random(1) < 0.5)
			audio_play_sound(snd_skelDeath1,0,0);
		else
			audio_play_sound(snd_skelDeath2,0,0);
	}
	instance_destroy();
}

if (instance_exists(obj_leo))
		up = obj_leo.upperCut;
else up = false;
if (collision_circle(x, y, 50, obj_leo, false, false) && up){
	
	if (random(1) < 0.9)
		audio_play_sound(snd_punch1,0,0);
	else
		audio_play_sound(snd_punch2,0,0);
	hp -= 1;
	y -= 50;
	if (instance_exists(obj_leo))
		x2 = obj_leo.x;
		
	x += 50 * sign(x-x2);
}

if (collision_circle(x, y, 10, obj_tornadoSpawner, false, false)){
	
	hp -= 1;
}
