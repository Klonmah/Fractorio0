
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

//TODAS LAS PREGUNTAS CORRECTAS. CASO 5 Y 10 JUNTOS :D
if (string_char_at(lineas[level_id],1) == string(5) and global.cantidadPreguntas==5) or (string_char_at(lineas[level_id],1) == string(1) && string_char_at(lineas[level_id],2) == string(0))
{
	if string_char_at(lineas[level_id],2)=="a" or string_char_at(lineas[level_id],3)=="a"
	{
		draw_sprite(spr_coronaFacil,0,bbox_right,bbox_bottom);
	}
	else if string_char_at(lineas[level_id],2)=="b" or string_char_at(lineas[level_id],3)=="b"
	{
		draw_sprite(spr_coronaNormal,0,bbox_right,bbox_bottom);
	}
	else if string_char_at(lineas[level_id],2)=="c" or string_char_at(lineas[level_id],3)=="c"
	{
		draw_sprite(spr_coronaDificil,0,bbox_right,bbox_bottom);
	}
	if level_id==0
	{
		sprite_index=spr_Historia1Logo4
	}
	else if level_id==1
	{
		sprite_index=spr_Historia2Logo4
	}
	else
	{
		sprite_index=spr_Historia3Logo4
	}
}

//MAYORÍA DE LAS PREGUNTAS CORRECTAS, CASOS 5 Y 10 JUNTOS :D
else if string_char_at(lineas[level_id],1)>= string(round(global.cantidadPreguntas*0.6))
{
	if string_char_at(lineas[level_id],2)=="a" or string_char_at(lineas[level_id],3)=="a"
	{
		draw_sprite(spr_copaFacil,0,bbox_right,bbox_bottom);
	}
	else if string_char_at(lineas[level_id],2)=="b" or string_char_at(lineas[level_id],3)=="a"
	{
		draw_sprite(spr_copaNormal,0,bbox_right,bbox_bottom);
	}
	else if string_char_at(lineas[level_id],2)=="c" or string_char_at(lineas[level_id],3)=="a"
	{
		draw_sprite(spr_copaDificil,0,bbox_right,bbox_bottom);
	}
	
	if level_id==0
	{
		sprite_index=spr_Historia1Logo3
	}
	else if level_id==1
	{
		sprite_index=spr_Historia2Logo3
	}
	else
	{
		sprite_index=spr_Historia3Logo3
	}
}

else
{
	if level_id==0
	{
		sprite_index=spr_Historia1Logo2
	}
	else if level_id==1
	{
		sprite_index=spr_Historia2Logo2
	}
	else
	{
		sprite_index=spr_Historia3Logo2
	}	
}