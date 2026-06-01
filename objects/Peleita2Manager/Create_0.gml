contador=60;
timeshit=0;
ataque=irandom(1)
segundos=60;
direccion=0;

file = file_text_open_read("datosPeleas.txt");
lineas=[]

while (!file_text_eof(file))
{
	array_push(lineas, file_text_readln(file));
}

file_text_close(file);