if direccion==0
{
	y+=10;	
}
else if direccion==1
{
	y+=10
	x+=randomhorizontal
	image_angle=10*randomhorizontal
}
else if direccion==2
{
	y+=10
	x-=randomhorizontal
	image_angle=10*-randomhorizontal
}

if abs(x)>1920 or abs(y)>1080
{
	instance_destroy();
}

if place_meeting(x,y,objBichito)
{
	if objBichito.iframes<0
	{
		objBichito.vidas--;
		objBichito.iframes=180;
	}
	instance_destroy();
}