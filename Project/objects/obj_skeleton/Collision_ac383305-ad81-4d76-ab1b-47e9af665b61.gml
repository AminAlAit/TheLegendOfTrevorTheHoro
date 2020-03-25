/// @description Insert description here
// You can write your code in this editor

if(canHurt <=0){
	
	with(other){
		
		hp -= 1;
		
		if(random(1) < 0.9)
			audio_play_sound(snd_playerPain1,0,0);
		else
			audio_play_sound(snd_playerPain2,0,0);
		
	}
	
	canHurt = 90;
}