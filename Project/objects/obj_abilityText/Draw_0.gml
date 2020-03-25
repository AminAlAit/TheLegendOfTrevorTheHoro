/// @description Insert description here
// You can write your code in this editor

////////////////////////////////////////////////////////
//                   Placement                        //
//               Draw, Font & Color                   //
////////////////////////////////////////////////////////
var cx = camera_get_view_x(view_camera[0]);
var cy = camera_get_view_y(view_camera[0]);
var cw = camera_get_view_width(view_camera[0]);


draw_set_font(fnt_ability)
draw_set_color(c_red);
draw_text(cx +cw/2 + 80, cy + 250, text);
