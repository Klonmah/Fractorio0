if (keyboard_check(ord("A")) or keyboard_check(vk_left)) and (x>=60)
{
	x-=10;
}
if (keyboard_check(ord("D")) or keyboard_check(vk_right)) and (x<=1860)
{
	x+=10;
}
if (keyboard_check(ord("W")) or keyboard_check(vk_up)) and (y>=580)
{
	y-=10;
}
if (keyboard_check(ord("S")) or keyboard_check(vk_down)) and (y<=1020)
{
	y+=10;
}
if keyboard_check(ord("Z")) and cooldown<=0
{
	instance_create_layer(x,y-20,"Instances",objProyectil);
	cooldown=30;
}
if vidas==0
{
	room_restart();
}
iframes--;
cooldown--;