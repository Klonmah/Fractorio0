mouseEncima = false;
clickeado = true;
idJugador=0;

if (!file_exists("datosJugador.txt"))
{
    file = file_text_open_write("datosJugador.txt");
    file_text_write_string(file, "0a");
	file_text_writeln(file);
	file_text_write_string(file, "0a");
	file_text_writeln(file);
	file_text_write_string(file, "0a");
    file_text_close(file);
}

if (!file_exists("datosPeleas.txt"))
{	
    file2 = file_text_open_write("datosPeleas.txt");
    file_text_write_string(file2, "0");
	file_text_writeln(file2);
	file_text_write_string(file2, "0");
	file_text_close(file2);
}

if (!file_exists("IdJugador.txt"))
{
	file3 = file_text_open_write("IdJugador.txt");
	file_text_write_string(file3, "0");
	file_text_close(file3);
	file3 = file_text_open_read("IdJugador.txt");
	idJugador = real(file_text_readln(file3));
	file_text_close(file3);
}
else
{
	file3 = file_text_open_read("IdJugador.txt");
	idJugador = real(file_text_readln(file3));
	file_text_close(file3);
}
