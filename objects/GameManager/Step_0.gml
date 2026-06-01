tiempoDeRespuesta++;
if a==true
{
	//colocar_posicion();
	a=false;
}

if (mouse_check_button_released(mb_left) && contador<global.cantidadPreguntas)
{
	
	if instance_position(mouse_x, mouse_y, BotonAlternativaCorrecta)
	{
		if(separador%2==0)
		{
			BotonAlternativaCorrecta.sprite_index = spr_RespuestaCorrecta;
			show_debug_message(string(separador));
			contador++;
			correctas++;
			instance_destroy(objEventoMano);
			instance_destroy(objBolaDisco);
			instance_destroy(objSpacebar);
			file4 = file_text_open_append("LogJugador"+string(idJugador)+".txt");
			file_text_write_string(file4,"Jugador Contestó Correctamente");
			file_text_writeln(file4);
			file_text_write_string(file4,"Tiempo de Respuesta: "+string(tiempoDeRespuesta/60)+" segundos");
			file_text_writeln(file4);
			file_text_close(file4);
			tiempoDeRespuesta=0;
		}
		else
		{
			eventcheck();
			//colocar_posicion();
			BotonAlternativaCorrecta.sprite_index = spr_Respuesta;	
			with(BotonAlternativaCorrecta)
			{
				text=dialogo[seleccionadorDialogo];
				seleccionadorDialogo++;
				sprite_index = spr_Respuesta;
			}
			with( BotonAlternativaIncorrecta)
			{
				text=dialogo[seleccionadorDialogo];
				sprite_index= spr_Respuesta;
				seleccionadorDialogo++;
			}
			with(objPregunta)
			{
				text=dialogo[seleccionadorDialogo];
				seleccionadorDialogo++;
			}
			colocar_posicion();
			escribirPregunta();
			tiempoDeRespuesta=0;
		}
		separador++;
		show_debug_message(string(separador));
	}
	else if instance_position(mouse_x, mouse_y, BotonAlternativaIncorrecta)
	{
	
		if(separador%2==0)
		{
			
			BotonAlternativaIncorrecta.sprite_index = spr_RespuestaIncorrecta;
			file4 = file_text_open_append("LogJugador"+string(idJugador)+".txt");
				file_text_write_string(file4,"Jugador Contestó Incorrectamente");
				file_text_writeln(file4);
				with BotonAlternativaIncorrecta
				{
				if instance_position(mouse_x, mouse_y,id)
				{
					file_text_write_string(GameManager.file4,"Respuesta Elegida: "+text);
					file_text_writeln(GameManager.file4);
				}
				}
				file_text_write_string(file4,"Tiempo de Respuesta: "+string(tiempoDeRespuesta/60)+" segundos");
				file_text_writeln(file4);
				file_text_close(file4);
				tiempoDeRespuesta=0;
			with(BotonAlternativaCorrecta)
			{
				sprite_index = spr_RespuestaCorrecta;
			}
			contador++;
			instance_destroy(objEventoMano);
			instance_destroy(objBolaDisco);
			instance_destroy(objSpacebar);
		}
		else
		{
			eventcheck();
			BotonAlternativaIncorrecta.sprite_index = spr_Respuesta;	
			with(BotonAlternativaCorrecta)
			{
				text=dialogo[seleccionadorDialogo];
				seleccionadorDialogo++;
				sprite_index = spr_Respuesta;
				//colocar_posicion();
			}
			with( BotonAlternativaIncorrecta)
			{
				text=dialogo[seleccionadorDialogo];
				seleccionadorDialogo++;
				sprite_index = spr_Respuesta;
			}
			with(objPregunta)
			{
				text=dialogo[seleccionadorDialogo];
				seleccionadorDialogo++;
			}
			colocar_posicion();
			escribirPregunta();
		}
		separador++;
		show_debug_message(string(separador));
	}
	else if (!instance_position(mouse_x, mouse_y, BotonAlternativaIncorrecta) && !instance_position(mouse_x, mouse_y, BotonAlternativaCorrecta))
{
	
		if(separador%2==0)
		{
		}
		else
		{
			eventcheck();
			BotonAlternativaIncorrecta.sprite_index = spr_Respuesta;	
			with(BotonAlternativaCorrecta)
			{
				text=dialogo[seleccionadorDialogo];
				seleccionadorDialogo++;
				sprite_index = spr_Respuesta;
				//colocar_posicion();
			}
			with( BotonAlternativaIncorrecta)
			{
				text=dialogo[seleccionadorDialogo];
				seleccionadorDialogo++;
				sprite_index = spr_Respuesta;
			}
			with(objPregunta)
			{
				text=dialogo[seleccionadorDialogo];
				seleccionadorDialogo++;
			}
			colocar_posicion();
			escribirPregunta();
			separador++;
		}
		show_debug_message(string(separador));
	}
}
else if (mouse_check_button_released(mb_left) && contador>=global.cantidadPreguntas && guardado==true)
{
	guardado=false;
	file = file_text_open_write(working_directory + "datosJugador.txt");
	show_debug_message("AQUÍ ESTOY");
	if real(string_char_at(lineas[nivel],1))<=correctas && string_char_at(lineas[nivel],2)<=dificultad
	{
		lineas[nivel]=string(correctas)+dificultad;
	}
	for (i = 0; i < array_length(lineas); i++)
    {
		if string_char_at(lineas[nivel],2)==0
		{
			file_text_write_string(file, string_char_at(lineas[i],1)+string_char_at(lineas[i],2)+string_char_at(lineas[i],3));
		}
		else
		{
			file_text_write_string(file, string_char_at(lineas[i],1)+string_char_at(lineas[i],2));
		}
		file_text_writeln(file);
	}
	file_text_close(file);
	if correctas==global.cantidadPreguntas
	{
		room_goto(finalesPerfectos[nivel]);
	}
	else if correctas>=global.cantidadPreguntas*0.6
	{
		room_goto(finalesBuenos[nivel]);	
	}
	else
	{
		room_goto(finalesMalos[nivel]);
	}
}
with(objEventoMano)
{
	if instance_place(x+300,y,BotonAlternativaCorrecta)
	{
		BotonAlternativaCorrecta.sprite_index = spr_RespuestaCorrecta;
		with(GameManager)
		{
			file4 = file_text_open_append("LogJugador"+string(idJugador)+".txt");
			file_text_write_string(file4,"El evento de la patita escogió la respuesta correcta.");
			file_text_writeln(file4);
			file_text_write_string(file4,"Tiempo de Respuesta: "+string(tiempoDeRespuesta/60)+" segundos");
			file_text_writeln(file4);
			file_text_close(file4);
			tiempoDeRespuesta=0;
			separador++;
			correctas++;
			contador++
			instance_destroy(objEventoMano);
			instance_destroy(objSpacebar);
		}	
	}
	else if instance_place(x+300,y,BotonAlternativaIncorrecta)
	{
		BotonAlternativaIncorrecta.sprite_index = spr_RespuestaIncorrecta;
		BotonAlternativaCorrecta.sprite_index= spr_RespuestaCorrecta;
		with(GameManager)
		{
			file4 = file_text_open_append("LogJugador"+string(idJugador)+".txt");
				file_text_write_string(file4,"El evento de la patita escogió la respuesta incorrecta.");
				file_text_writeln(file4);
				with BotonAlternativaIncorrecta
				{
				if instance_place(objEventoMano.x+300, objEventoMano.y,id)
				{
					file_text_write_string(GameManager.file4,"Respuesta Elegida: "+text);
					file_text_writeln(GameManager.file4);
				}
				}
				file_text_write_string(file4,"Tiempo de Respuesta: "+string(tiempoDeRespuesta/60)+" segundos");
				file_text_writeln(file4);
				file_text_close(file4);
				tiempoDeRespuesta=0;
			separador++;
			contador++
			instance_destroy(objEventoMano);
			instance_destroy(objSpacebar);
		}
	}
}