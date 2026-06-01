contador--;
if segundos>0
{
if direccion==0
{
	objFrac.x-=5
	if objFrac.x<=0
	{
		direccion=1;	
	}
}
else
{
	objFrac.x+=5
	if objFrac.x>=1240
	{
		direccion=0;	
	}
}
}
if contador<20 and contador>5
{
	objFrac.sprite_index=spr_fracIdle
}
if(contador<=0 and segundos>0)
{
	if ataque==0
	{
		instance_create_layer(objFrac.x+404,240,"Instances",objBolaPelo);
		instance_create_layer(objFrac.x+340,240,"Instances",objBolaPelo);
		instance_create_layer(objFrac.x+468,240,"Instances",objBolaPelo);
		ataque=irandom(1)
		objFrac.sprite_index=spr_fracBola
		contador=60;
		segundos--;
	}
	else if ataque==1
	{
		instance_create_layer(0,0,"Instances",objPataAtaque);
		instance_create_layer(0,0,"Instances",objPataAtaque);
		contador=60;
		segundos--;
		ataque=irandom(1)
	}
}

if segundos<=0
{
	objFrac.y++;
	objFrac.sprite_index=spr_fracTired;
	if objFrac.y>500
	{
		room_goto(Room2)
		file=file_text_open_write("datosPeleas.txt");
		file_text_write_string(file,"1");
		file_text_writeln(file);
		file_text_write_string(file,"1");
		file_text_close(file);
	}
}