/// @description Insert description here
// You can write your code in this editor
firingDelay -= 1;
if (mouse_check_button(mb_left) && (firingDelay <= 0)){
	
	firingDelay = 180;
	instance_create_layer(x + 150,y,"Layer_Bullet",obj_tornadoSpawner)
	
	//tempCount = 5;
	//tempLocx = x + 150;
	//tempLocy = y;
	//tempAlpha = 1;
	//alarm[0] = 50;
}