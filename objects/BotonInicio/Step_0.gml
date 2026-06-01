if instance_position(mouse_x, mouse_y, BotonInicio)
{
	mouseEncima = true;
	sprite_index = spr_play2;
	image_xscale=1.5;
	image_yscale=1.5
}
else
{
	image_yscale=1.4;
	image_xscale=1.4;
	mouseEncima = false;
	sprite_index = spr_play1;	
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
		room_goto(Room2);
	}
}

if keyboard_check_pressed(ord("R"))
{
	file = file_text_open_write("datosJugador.txt");
	file_text_write_string(file, "0a");
	file_text_writeln(file);
	file_text_write_string(file, "0a");
	file_text_writeln(file);
	file_text_write_string(file, "0a");
	file_text_close(file);
	
	file2 = file_text_open_write("datosPeleas.txt");
	file_text_write_string(file2, "0");
	file_text_writeln(file2);
	file_text_write_string(file2, "0");
	file_text_close(file2);
	
	file3 = file_text_open_write("IdJugador.txt");
	file_text_write_string(file3, string(idJugador+1));
	file_text_close(file3);
	idJugador++;
	
	file4 = file_text_open_append("LogJugador"+string(idJugador)+".txt");
	file_text_write_string(file4, "====================================");
	file_text_writeln(file4);
	file_text_writeln(file4);
	file_text_write_string(file4, "DATOS DEL JUGADOR");
	file_text_writeln(file4);
	file_text_writeln(file4);
	file_text_write_string(file4, "IdJugador: "+string(idJugador));
	file_text_writeln(file4);
	file_text_write_string(file4, "Fecha Inicio Partida: "+date_datetime_string(date_current_datetime()));
	file_text_writeln(file4);
	file_text_write_string(file4, "====================================")
	file_text_writeln(file4);
	file_text_writeln(file4);
	file_text_write_string(file4, "DATOS DEL GAMEPLAY")
	file_text_writeln(file4);
	file_text_writeln(file4);
	file_text_close(file4);
}