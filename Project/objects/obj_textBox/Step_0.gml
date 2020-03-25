if(keyboard_check(vk_enter))
{
	text = "Leo will grant you Fire Storm. Gemini will grant you Storm Seduction, & Finally Libra will grant you the strength of Hercules. Press C to continue";
}
if(keyboard_check(ord("C")))
{
	instance_create_layer(obj_textBox.x, obj_textBox.y, "layer_main", obj_textBox1);
	instance_destroy();
}