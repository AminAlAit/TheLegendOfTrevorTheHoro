/// @description set up camera
cam             = view_camera[0];
follow          = obj_leo;
view_w_half     = camera_get_view_width(cam)  * 0.5;
view_h_half     = camera_get_view_height(cam) * 0.5;
xTo             = xstart;
yTo             = ystart;

shake_length    = 0;
shake_magnitude = 0;
shake_remain    = 0;
buff            = 32;

plxSpeedMoon    = 100;
plxSpeedBClouds = 50;
plxSpeedClouds  = 10;
plxSpeedTree2   = 5;
plxSpeedTree1   = 2;
