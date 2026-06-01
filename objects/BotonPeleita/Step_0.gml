if instance_position(mouse_x, mouse_y, id) and !instance_exists(objTori)
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

if string_char_at(lineasPeleas[level_id],1) == string(1)
{
	sprite_index=spr_fracIconoPeleaDerrotado;
	derrotado=true;
}

else if string_char_at(lineas[level_id],1)< string(round(global.cantidadPreguntas*0.6))
{
	sprite_index=spr_fracIconoPeleaBloqueado
	
	with BotonLevel1
	{
		if level_id==other.level_id+1
		{
			if level_id==1
			{
				sprite_index=spr_Historia2Logo1
			}
			else if level_id==2
			{
				sprite_index=spr_Historia3Logo1
			}
		}
	}
}

else if string_char_at(lineas[level_id],1)>= string(round(global.cantidadPreguntas*0.6))
{
	ganaste=true;
	sprite_index=spr_fracIconoPeleaDesafiante;
	
	with BotonLevel1
	{
		if level_id==other.level_id+1
		{
			if level_id==1
			{
				sprite_index=spr_Historia2Logo1
			}
			else if level_id==2
			{
				sprite_index=spr_Historia3Logo1
			}
		}
	}
}