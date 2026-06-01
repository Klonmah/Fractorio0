// Inherit the parent event
event_inherited();
if sprite_index==spr_facil
{
	global.dificultad="fácil";
}
else if sprite_index==spr_normal
{
	global.dificultad="normal";
}
else if sprite_index==spr_dificil
{
	global.dificultad="difícil";
}
global.cantidadPreguntas=5;

activar_boton=function(){
	if room==Room1 or room==Room2
	{
	if global.dificultad=="fácil"
	{
		global.dificultad="normal";
		sprite_index=spr_normal;
		show_debug_message("dificultad cambiada a "+global.dificultad)
	}
	else if global.dificultad=="normal"
	{
		global.dificultad="difícil";
		sprite_index=spr_dificil
		show_debug_message("dificultad cambiada a "+global.dificultad)
	}
	else
	{
		global.dificultad="fácil";
		sprite_index=spr_facil;
		show_debug_message("dificultad cambiada a "+global.dificultad)
	}
	}
}
