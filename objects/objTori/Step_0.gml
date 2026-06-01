if instance_position(mouse_x, mouse_y, id)
{
	mouseEncima = true;
}

else
{
	mouseEncima= false;	
}

if mouseEncima and mouse_check_button_pressed(mb_left)
{
	show_debug_message("CLICK");
	instance_destroy()
}