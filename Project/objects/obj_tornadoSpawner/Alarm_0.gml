/// @description Insert description here
// You can write your code in this editor

instance_create_layer(x,y,"Layer_Bullet",obj_tornado1)

if (count >= 0){
	count--;
	alarm[0] = random_range(5,10);
}
else
	alarm[1] = 60*3;