/// @description Insert description here
// You can write your code in this editor


//Get Player Input
key_left = keyboard_check(vk_left) || keyboard_check(ord("A"));
key_right = keyboard_check(vk_right) || keyboard_check(ord("D"));
key_jump = keyboard_check_pressed(vk_space) || keyboard_check(ord("W"));

	




// Menu
if (keyboard_check(vk_escape)){
	
	SlideTransition(TRANS_MODE.GOTO, menu)
	hascontrol = false;
	
}



// Calculate Movement
var move = key_right - key_left;

hsp = move * walksp;
vsp = vsp + grv;


if (place_meeting(x,y+1,obj_block)) && (key_jump){
	
	vsp = -7;	
}

// Horizonatal collision
if (place_meeting(x+hsp,y,obj_block)){
	
	while (!place_meeting(x + sign(hsp),y,obj_block)){
	
		x = x + sign(hsp);
		
	}
	
	hsp = 0;
}
x = x + hsp;

// Vertical collision
if (place_meeting(x,y + vsp,obj_block)){
	
	while (!place_meeting(x,y + sign(vsp),obj_block)){
	
		y = y + sign(vsp);
	}
	vsp = 0;
}
y = y + vsp;


// Animation

if (sprite_index == spr_gainWind || sprite_index == spr_gainFire || sprite_index == spr_taunt){

	if (image_index > image_number - 1){
		y -= 30; // to not get stuck when gaining new power
		sprite_index = spr_leoIdle;
	}
	
}
	else{
	if (fireAttack == true){

		if (image_index > image_number - 1){
			sprite_index = spr_leoIdle;
			fireAttack = false;
		}

	}
	else{
		if (windAttack == true){

			if (image_index > image_number - 1){
				sprite_index = spr_leoIdle;
				windAttack = false;
			}

		}
		else{

			if(upperCut == true){

			
				if (image_index > image_number - 1){
					sprite_index = spr_leoIdle;
					upperCut = false;	
				}	

			}
			else{
				if (!place_meeting(x,y+1,obj_block)) {
	
					sprite_index = spr_leoJump;
	
					//if (sign(vsp)>0) image_index = 1; else image_index = 0;
				}
				else {
					image_speed = 1;
					if (hsp == 0){
						sprite_index = spr_leoIdle;
					}
					else {
						sprite_index = spr_leoWalk;
					}
				 }
			}
		}
	}
}

if (hsp!=0) {
	image_xscale = sign(hsp);
	if (walkSnd <= 0 && place_meeting(x,y+1,obj_block)){
		audio_play_sound(snd_walk,0,0);
		walkSnd = 40;
	}
	
	if (key_jump == true && jumpSnd <= 0){
		audio_play_sound(snd_jump,0,0);
		jumpSnd = 60;
	}
	
}