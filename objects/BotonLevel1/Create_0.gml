// Inherit the parent event
event_inherited();

file = file_text_open_read("datosJugador.txt");

lineas = [];

while (!file_text_eof(file))
{
    array_push(lineas, file_text_readln(file));
}

activar_boton = function()
{
	if(level_id==0)
	{
		room_goto(room_historia1);
	}
	else
	{
		// Esto revisa si la pelea anterior al nivel ya ha sido superada
		// Solo te deja entrar al nivel si ganaste la pelea anterior
		with BotonPeleita
		{
			if ((level_id==(other.level_id-1)) && (derrotado==true))
		{
			room_goto(LevelManager.level_rooms[other.level_id]);
		}
		}
	}
}

file_text_close(file);