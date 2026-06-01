randomize();
//Básicamente si esto es par, cambiará de color (te mostrará si la alternativa está bien)
//Y si es impar, pasarás a la siguiente pregunta
separador=0;
seleccionadorDialogo=1;
contador=0;
a=true;
correctas=0;
evento=irandom(3);
cualevento=0;
guardado=true;
finalesPerfectos= [room_final1A, room_final2A, room_final3A]
finalesBuenos= [room_final1B, room_final2B, room_final3B]
finalesMalos= [room_final1C, room_final2C, room_final3C]
tiempoDeRespuesta=0;

file3 = file_text_open_read("IdJugador.txt");
idJugador = real(file_text_readln(file3));
file_text_close(file3);

escribirPregunta=function()
{
	file4 = file_text_open_append("LogJugador"+string(idJugador)+".txt");
	file_text_writeln(file4);
	file_text_write_string(file4, "Pregunta: "+objPregunta.text);
	file_text_writeln(file4);
	file_text_writeln(file4);
	with BotonAlternativaIncorrecta
	{
		file_text_write_string(GameManager.file4, "Alternativa (Incorrecta): "+text);
		file_text_writeln(GameManager.file4);
	}
	file_text_write_string(file4, "Alternativa (Correcta): "+BotonAlternativaCorrecta.text);
	file_text_writeln(file4);
	file_text_writeln(file4);
	file_text_close(file4);
}

eventcheck=function()
{
	evento=irandom(3);
if (evento==0)
{
	cualevento=irandom(1);
	if (cualevento==0)
	{
		instance_create_layer(0,0,"Instances",objEventoMano)
		instance_create_layer(1620,850,"Instances", objSpacebar)
	}
	else if (cualevento==1)
	{
		instance_create_layer(0,0,"Instances",objBolaDisco)
	}
}
}
eventcheck();
if(global.dificultad=="fácil")
{
	dificultad="a";
}
else if(global.dificultad=="normal")
{
	dificultad="b";
}
else if(global.dificultad=="difícil")
{
	dificultad="c";
}

posiciones[0]=[704,800];
posiciones[1]=[1280,800];
posiciones[2]=[704,992];
posiciones[3]=[1280,992];

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

file = file_text_open_read("datosJugador.txt");

lineas = [];

while (!file_text_eof(file))
{
    array_push(lineas, file_text_readln(file));
}

file4 = file_text_open_append("LogJugador"+string(idJugador)+".txt");
file_text_write_string(file4, "Jugando Nivel ")
if room==room_quiz1
{
	file_text_write_string(file4, "1")
}
else if room==room_quiz2
{
	file_text_write_string(file4, "2")
}
else if room==room_quiz3
{
	file_text_write_string(file4, "3")
}
file_text_write_string(file4, " en dificultad "+global.dificultad);
file_text_writeln(file4);
file_text_writeln(file4);
file_text_close(file4);
escribirPregunta();


colocar_posicion = function()
{
show_debug_message("inicio");
posicion=irandom(3);
if(posicion==0)
{
	with(BotonAlternativaCorrecta)
	{
		x=704;
		y=800;
		sprite_index = spr_Respuesta;
	}
	with(BotonAlternativaIncorrecta)
	{
		if id_incorrecta==1
		{
			x=1280;
			y=800;
			sprite_index = spr_Respuesta;
			show_debug_message("movida al inc 1");
		}
		if id_incorrecta==2
		{
			x=704;
			y=992;
			sprite_index = spr_Respuesta;
			show_debug_message("movida al inc 2");
		}
		if id_incorrecta==3
		{
			x=1280;
			y=992;
			sprite_index = spr_Respuesta;
			show_debug_message("movida al inc 3");
		}
	}
}
else if(posicion==1)
{
	with BotonAlternativaCorrecta
	{
	x=1280;
	y=800;
	sprite_index = spr_Respuesta;
	}
	
	with(BotonAlternativaIncorrecta)
	{
		if id_incorrecta==1
		{
			x=704;
			y=800;
			sprite_index = spr_Respuesta;
			show_debug_message("movida al inc 1");
		}
		if id_incorrecta==2
		{
			x=704;
			y=992;
			sprite_index = spr_Respuesta;
			show_debug_message("movida al inc 2");
		}
		if id_incorrecta==3
		{
			x=1280;
			y=992;
			sprite_index = spr_Respuesta;
			show_debug_message("movida al inc 3");
		}
	}
}
else if(posicion==2)
{
	with(BotonAlternativaCorrecta)
	{
	x=704;
	y=992;
	sprite_index = spr_Respuesta;
	}
	
	with(BotonAlternativaIncorrecta)
	{
		sprite_index = spr_Respuesta;
		if id_incorrecta==1
		{
			x=704;
			y=800;
			sprite_index = spr_Respuesta;
			show_debug_message("movida al inc 1");
		}
		if id_incorrecta==2
		{
			x=1280;
			y=800;
			sprite_index = spr_Respuesta;
			show_debug_message("movida al inc 2");
		}
		if id_incorrecta==3
		{
			x=1280;
			y=992;
			sprite_index = spr_Respuesta;
			show_debug_message("movida al inc 3");
		}
	}
}
else if(posicion==3)
{
	with(BotonAlternativaCorrecta)
	{
	x=1280;
	y=992;
	sprite_index = spr_Respuesta;
	}
	
	with(BotonAlternativaIncorrecta)
	{
		
		if id_incorrecta==1
		{
			x=704;
			y=800;
			sprite_index = spr_Respuesta;
			show_debug_message("movida al inc 1");
		}
		if id_incorrecta==2
		{
			x=1280;
			y=800;
			sprite_index = spr_Respuesta;
			show_debug_message("movida al inc 2");
		}
		if id_incorrecta==3
		{
			x=704;
			y=992;
			sprite_index = spr_Respuesta;
			show_debug_message("movida al inc 3");
		}
	}
}
}
//colocar_posicion();
file_text_close(file);