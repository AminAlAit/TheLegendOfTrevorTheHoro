/// @description Update Camera

// Update destination
if(instance_exists(follow))
{
	xTo = follow.x;
	yTo = follow.y;
}

// Update Object Position
x += (xTo - x) / 25;
y += (yTo - y) / 25;

x = clamp(x, view_w_half + buff, room_width  - view_w_half - buff);
y = clamp(y, view_h_half + buff, room_height - view_h_half - buff);

//Screen Shake
x += random_range(-shake_remain, shake_remain);
y += random_range(-shake_remain, shake_remain);
shake_remain = max(0, shake_remain - ((1/shake_length)*shake_magnitude));

// Update camera view
camera_set_view_pos(cam, (x-view_w_half), (y-view_h_half));
// Moon PLX
if(layer_exists("plx_moon"))
{
	layer_x("plx_moon", x/plxSpeedMoon + 1200);
}
// BaseClouds PLX
if(layer_exists("plx_baseClouds"))
{
	layer_x("plx_baseClouds", x/plxSpeedBClouds);
}
// 6 Clouds
if(layer_exists("plx_cloud1"))
{
	layer_x("plx_cloud1", x/plxSpeedClouds + 786);
}
if(layer_exists("plx_cloud2"))
{
	layer_x("plx_cloud2", x/plxSpeedClouds + 550);
}
if(layer_exists("plx_cloud3"))
{
	layer_x("plx_cloud3", x/plxSpeedClouds + 1300);
}
if(layer_exists("plx_cloud4"))
{
	layer_x("plx_cloud4", x/plxSpeedClouds + 2600);
}
if(layer_exists("plx_cloud5"))
{
	layer_x("plx_cloud5", x/plxSpeedClouds + 2682);
}
if(layer_exists("plx_cloud6"))
{
	layer_x("plx_cloud6", x/plxSpeedClouds + 2000);
}
// 2 TREES PLX
if(layer_exists("plx_tree2"))
{
	layer_x("plx_tree2", x/plxSpeedTree2);
}
if(layer_exists("lx_tree1"))
{
	layer_x("plx_tree1", x/plxSpeedTree1);
}