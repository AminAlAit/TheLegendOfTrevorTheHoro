////////////////////////////////////////////////////////
//                   Placement                        //
//               Draw, Font & Color                   //
////////////////////////////////////////////////////////
var cx = camera_get_view_x(view_camera[0]);
var cy = camera_get_view_y(view_camera[0]);
var cw = camera_get_view_width(view_camera[0]);

if (instance_exists(obj_leo)){
	theScore = obj_leo.theScore;
	hp = obj_leo.hp;
}
else hp = 0;

draw_set_font(fnt_menu);
draw_set_color(c_white);
draw_text(cx +cw/2 + 80, cy + 65, "SCORE: " + string(theScore));
draw_text(cx +cw/2 + 110, cy + 100, "HITS LEFT: " + string(hp));
//draw_text(cx +cw/2 -64, cy + 65, "   Turret Timer: "      +string(20 - turretTimer));