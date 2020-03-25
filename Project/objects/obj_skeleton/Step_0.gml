/// @description Insert description here
// You can write your code in this editor


if (instance_exists(obj_leo)){
	
	move_towards_point(obj_leo.x,obj_leo.y,1.5);
}

vsp = vsp + grv;

// Vertical collision
if (place_meeting(x,y + vsp,obj_block)){
	
	while (!place_meeting(x,y + sign(vsp),obj_block)){
	
		y = y + sign(vsp);
	}
	vsp = 0;
}
y = y + vsp;





if (place_meeting(x+1,y,obj_block)){

	y -= 7;

}
if (instance_exists(obj_leo))
		x2 = obj_leo.x;
if x - x2 > 0
	image_xscale = 1;
else image_xscale = -1;
