/// @description Insert description here
// You can write your code in this editor

windDelay -= 1;
fireDelay -= 1;
punchDelay -= 1;
walkSnd -= 1;
jumpSnd -= 1;
if (mouse_check_button(mb_left) && (windDelay <= 0) && abilityWind){
	
	audio_play_sound(snd_tornado,0,0);
	windDelay = 180;
	windAttack = true;
	instance_create_layer(x + 150*sign(mouse_x-x),y,"Layer_Bullet",obj_tornadoSpawner)
	
	sprite_index = spr_leoWindAttack;
		
	
}

if (mouse_check_button(mb_right) && (fireDelay <= 0) && abilityFire){
	
	fireDelay = 60;
	fireAttack = true;
	with(instance_create_layer(x + 15*sign(mouse_x-x),y,"Layer_Bullet",obj_bullet)){
		if(sign(mouse_x-obj_leo.x) >=0){
			direction = 0;
			image_xscale = 1;
		}
		else {
			direction = 180;
			image_xscale = -1;
		}
	}
	
	sprite_index = spr_leoFireAttack;
		
	
}

if (keyboard_check(vk_control) && punchDelay <= 0 && abilityPunch) {
	audio_play_sound(snd_prePunch,0,0);
	punchDelay = 60;
	upperCut = true;
	sprite_index = spr_leoUppercut;
	
}
//if (hp <=0)
//	game_restart();