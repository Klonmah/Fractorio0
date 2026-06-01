show_debug_message(global.dificultad)
if global.dificultad=="fácil"
{
dialogo[0]="¿Cuál es la carga total del sistema: 3/16 + (doble de 3/16)?";
dialogo[1]="Tenías 11/12 puertos abiertos y cerraste la mitad (1/2).\n ¿Cuál es la cantidad restante?";
dialogo[2]="Calcula el almacenamiento total: 9/25 + (1/5 × 2/5)";
dialogo[3]="Calcula el direccionamiento restante: 29/32 - 14/32";
dialogo[4]="Suma tres microservicios: 2/15 + 4/15 + triple de 1/15";
dialogo[5]="Elige la respuesta con un '1'!!!!!!";
dialogo[6]="Elige la respuesta con un '1'!!!!!!";
dialogo[7]="Elige la respuesta con un '1'!!!!!!!";
dialogo[8]="Elige la respuesta con un '1'!!!!!!!!";
dialogo[9]="Elige la respuesta con un '1'!!!!!!!!!";
}
if global.dificultad=="normal"
{
dialogo[0]="Un balanceador asigna 3/8 al Nodo 1. Al Nodo 2 le asigna 1/2 de lo restante.\n ¿Cuánto recibe el Nodo 2?";
dialogo[1]="Tienes 9/15 réplicas. Si se pierde 1/3, ¿cuántas quedan?";
dialogo[2]="Latencia total 97/100. Resta el producto de (13/10 × 1/10). ¿Resultado?";
dialogo[3]="¿Se alcanza el total si se suma 1/4 + 2/4 + 1/2 de 1/2?";
dialogo[4]="Backup: Nodo 1 (5/14), Nodo 2 (6/14).\n Nodo 3 aporta la mitad de Nodo 1. ¿Total?";
dialogo[5]="Elige la respuesta con un '1'!!!!!!";
dialogo[6]="Elige la respuesta con un '1'!!!!!!";
dialogo[7]="Elige la respuesta con un '1'!!!!!!!";
dialogo[8]="Elige la respuesta con un '1'!!!!!!!!";
dialogo[9]="Elige la respuesta con un '1'!!!!!!!!!";
}
if global.dificultad=="difícil"
{
dialogo[0]="Capacidad total 20/20. Se pierde 7/20 \ny se recupera 1/4 de lo perdido. ¿Capacidad final?";
dialogo[1]="Proceso A usa 4/18. Proceso B usa el triple.\n ¿Qué queda para el sistema?";
dialogo[2]="Error A afecta 5/11. Error B afecta 1/2 de lo restante.\n ¿Queda sistema libre?";
dialogo[3]="Consulta SQL usa 13/30. La red usa 2/3 de lo restante.\n ¿Qué fracción representa la red?";
dialogo[4]="Calcula: (17/24 - 5/24) × 3/4";
dialogo[5]="Elige la respuesta con un '1'!!!!!!";
dialogo[6]="Elige la respuesta con un '1'!!!!!!";
dialogo[7]="Elige la respuesta con un '1'!!!!!!!";
dialogo[8]="Elige la respuesta con un '1'!!!!!!!!";
dialogo[9]="Elige la respuesta con un '1'!!!!!!!!!";
}
text=dialogo[0];