Algoritmo procesar_nums
	Definir i,contador como entero
	Definir acumulador,num como real
	
	contador=0
	acumulador=0
	Para i=1 hasta 14 con paso 2
		contador=contador+1
		Mostrar "Ingrese el " contador "º número" Sin Saltar
		Leer num
		acumulador=acumulador+num
	FinPara
	mostrar "el contador dió " contador
	mostrar "el acumulador dió " acumulador
FinAlgoritmo
