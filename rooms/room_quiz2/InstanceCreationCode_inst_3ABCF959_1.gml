show_debug_message(global.dificultad)
if global.dificultad=="fácil"
{
dialogo[0]="Calcula una pérdida de paquetes equivalente a\n la mitad (1/2) de un cuarto (1/4)";
dialogo[1]="De 100 tramas, 3/50 resultaron corruptas.\n ¿Qué fracción fue exitosa?";
dialogo[2]="En la cabecera 13/48 de un paquete IP,\n ¿cuál es el valor total de referencia?";
dialogo[3]="En un pool de 12 hilos, 1/3 están en estado 'Zombie'.\n ¿Qué proporción no está disponible?";
dialogo[4]="¿Qué tasa de transferencia es mayor: 5/25 o 10/50?";
dialogo[5]="Elige la respuesta con un '1'!!!!!!";
dialogo[6]="Elige la respuesta con un '1'!!!!!!";
dialogo[7]="Elige la respuesta con un '1'!!!!!!!";
dialogo[8]="Elige la respuesta con un '1'!!!!!!!!";
dialogo[9]="Elige la respuesta con un '1'!!!!!!!!!";
}
if global.dificultad=="normal"
{
dialogo[0]="¿Qué redundancia de red es equivalente a (3/4 ÷ 2)?";
dialogo[1]="Ordena de mayor a menor congestión: 5/9, 2/3, 7/18";
dialogo[2]="Servidor A tiene una latencia de 2/7 s.\n El servidor B tiene la mitad. ¿Cuál es la latencia de B?";
dialogo[3]="Si se ejecuta 3/4 de las instrucciones\n y falla 1/3 de ellas, ¿qué fracción representa el éxito?";
dialogo[4]="¿Qué servidor es más inestable\n si A falla en 5/8 y B en 11/16?";
dialogo[5]="Elige la respuesta con un '1'!!!!!!";
dialogo[6]="Elige la respuesta con un '1'!!!!!!";
dialogo[7]="Elige la respuesta con un '1'!!!!!!!";
dialogo[8]="Elige la respuesta con un '1'!!!!!!!!";
dialogo[9]="Elige la respuesta con un '1'!!!!!!!!!";
}
if global.dificultad=="difícil"
{
dialogo[0]="El Nodo A transmite 7/12 y el Nodo B transmite 3/4 \nde lo que transmite A. ¿Existe balanceo simétrico?";
dialogo[1]="Ordena de menor a mayor: 1/6, 3/18, 1/2, 2/9";
dialogo[2]="¿Qué consume más ancho de banda: \n Trama A (13/15) o Trama B (4/15 + 3/5)?";
dialogo[3]="Una trama de 60 bytes tiene 1/5 de overhead. De ese overhead, \n 1/4 es seguridad. ¿Qué fracción del total es seguridad?";
dialogo[4]="Si un commit está en 127/128 y el último bit \nrepresenta 1/2 de lo restante, ¿cuánto representa?";
dialogo[5]="Elige la respuesta con un '1'!!!!!!";
dialogo[6]="Elige la respuesta con un '1'!!!!!!";
dialogo[7]="Elige la respuesta con un '1'!!!!!!!";
dialogo[8]="Elige la respuesta con un '1'!!!!!!!!";
dialogo[9]="Elige la respuesta con un '1'!!!!!!!!!";
}
text=dialogo[0];