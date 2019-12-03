Algoritmo sin_titulo
	Definir matriz_notas Como Real
	Definir nombres como caracter
	Dimension nombres[5]
	Dimension matriz_notas[5,3]
	Para i=1 hasta 5
		Mostrar "Ingrese los nombres del " i "º alumno: "
		Leer nombres[i]
	FinPara
	
	Para a=1 hasta 5
		Mostrar "Para el alumno " nombres[a]
		Para n=1 hasta 3
			Mostrar "La nota " n "º"
			matriz_notas[a,n] = validarNotaEnRango(0, 100)
		FinPara
	FinPara
	
	Mostrar "Una vez cargados todos los datos..."
	//Esperar 2 Segundos
	Mostrar ""
	Mostrar "Presione una tecla para mostrar todos los resultados..."
	Esperar Tecla
	
	Mostrar "Los datos registrados son los siguientes"
	Mostrar ""
	Mostrar "Nombre   Nota 1   Nota 2   Nota 3"
	Para a=1 hasta 5
		Mostrar nombres[a] "         " Sin Saltar
		Para n=1 hasta 3
			Si n<3
				Mostrar matriz_notas[a,n] "      " Sin Saltar
			Sino
				Mostrar matriz_notas[a,n]
			FinSi
			
		FinPara
	FinPara
	
FinAlgoritmo

Funcion nota <- validarNotaEnRango(nota_menor, nota_mayor)
	Repetir
		Mostrar "Ingrese en el rango " nota_menor " a " nota_mayor
		Leer nota
	Hasta Que (nota>=nota_menor Y nota<=nota_mayor)
FinFuncion