if instance_position(mouse_x, mouse_y, id) and !instance_exists(objTori)
{
	mouseEncima = true;
	//sprite_index = Sprite2_1;
	image_xscale=1.5;
	image_yscale=1.5
}

else
{
	mouseEncima= false;
	image_xscale=1;
	image_yscale=1;
}

if mouseEncima and mouse_check_button_pressed(mb_left)
{
	instance_create_layer(960, 540, "Instances_1", objTori);
}