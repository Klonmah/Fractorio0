y=y-10;
timeshit=0;
if place_meeting(x,y,objFrac) and PeleitaManager.segundos>0
{
	PeleitaManager.timeshit++;
	if PeleitaManager.timeshit>=3
	{
		PeleitaManager.segundos--;
		PeleitaManager.timeshit=0;
	}
	instance_destroy();
}
if y<-100
{
	instance_destroy();	
}