x=x-2;

if keyboard_check_pressed(vk_space)
{
	x+=30
	if x>=2000
	{
		show_debug_message("muelto diablo");
		instance_destroy(id,true);
		instance_destroy(objSpacebar);
	}
}