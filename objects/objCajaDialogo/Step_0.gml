if instance_position(mouse_x, mouse_y, objCajaDialogo)
{
	mouseEncima = true;
}
else
{
	mouseEncima = false;	
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
		vecesPresionado++;
		if vecesPresionado<(array_length(dialogo))
		{
			text=dialogo[vecesPresionado];
		}
		
		if vecesPresionado>=(array_length(dialogo))
		{
			room_goto(level);
		}
	}
}