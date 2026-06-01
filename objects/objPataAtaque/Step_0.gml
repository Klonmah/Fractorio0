contador--;

if contador<30 && contador>0
{
	sprite_index=spr_Pata
	image_alpha=1;
	if contador==29
	{
		objFrac.sprite_index=spr_fracPata;
	}
}
else if contador<=0
{
	instance_destroy();
}
else
{
	image_alpha+=0.008	
}

if place_meeting(x,y,objBichito) && sprite_index==spr_Pata
{
	if objBichito.iframes<0
	{
		objBichito.vidas--;
		objBichito.iframes=180;
	}
}