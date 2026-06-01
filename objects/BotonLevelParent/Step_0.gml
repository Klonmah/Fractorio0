if instance_position(mouse_x, mouse_y, id)
{
	mouseEncima = true;
	//sprite_index = Sprite2_1;
	image_xscale=1.5;
	image_yscale=1.5
}
else
{
	image_yscale=1.4;
	image_xscale=1.4;
	mouseEncima = false;
	//sprite_index = Sprite2;	
}

if mouseEncima && mouse_check_button_pressed(mb_left)
{
	clickeado=true;
}

if mouse_check_button_released(mb_left)
{
	clickeado=false;
	
	if mouseEncima==true
	{
		activar_boton();
	}
}