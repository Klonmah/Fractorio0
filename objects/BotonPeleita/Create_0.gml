// Inherit the parent event
ganaste=false;
derrotado=false;

file = file_text_open_read("datosJugador.txt");
filePeleas= file_text_open_read("datosPeleas.txt");

lineas = [];
lineasPeleas = [];

while (!file_text_eof(file))
{
    array_push(lineas, file_text_readln(file));
}

while (!file_text_eof(filePeleas))
{
	array_push(lineasPeleas, file_text_readln(filePeleas))	
}

file_text_close(file);
file_text_close(filePeleas);

activar_boton= function()
{
	if sprite_index!=spr_fracIconoPeleaBloqueado
	{
		room_goto(LevelManager.fight_rooms[level_id]);
	}
}