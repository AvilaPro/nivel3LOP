Algoritmo sin_titulo
	Definir matriz_notas, acum_nota_alum, prom_alum Como Real
	Definir nombres como caracter
	Dimension nombres[5]
	Dimension matriz_notas[5,3]
	Dimension acum_nota_alum[5]
	Dimension prom_alum[5]
	Para i=1 hasta 5
		Mostrar "Ingrese los nombres del " i "º alumno: "
		Leer nombres[i]
	FinPara
	
	Para a=1 hasta 5
		Mostrar "Para el alumno " nombres[a]
		Para n=1 hasta 3
			//Mostrar "La nota " n "º"
			matriz_notas[a,n] = validarNotaEnRango(0, 100)
		FinPara
	FinPara
	
	cant_aprob=0
	acum_notas=0
	Para a=1 hasta 5
		para n=1 hasta 3
			sum_notas=sum_notas_notas + matriz_notas[a,n]
			acum_nota_alum[a]=acum_nota_alum[a]+matriz_notas[a,n]
			Si matriz_notas[a,n]>=50
				cant_aprob=cant_aprob+1
			FinSi
		FinPara
	FinPara
	
	Para a=1 hasta 5
		prom_alum[a]=acum_nota_alum[a]/3
	FinPara
	
	Mostrar "Una vez cargados todos los datos..."
	//Esperar 2 Segundos
	Mostrar ""
	Mostrar "Presione una tecla para mostrar todos los resultados..."
	Esperar Tecla
	
	Mostrar "Los datos registrados son los siguientes"
	Mostrar ""
	
	Mostrar "Nombre   Nota 1   Nota 2   Nota 3 "
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
	
	Mostrar "El acumulado de las notas por alumnos es: "
	Mostrar "Nombre   Nota Acumulada "
	Para a=1 hasta 5
		Mostrar nombres[a] "         " Sin Saltar
		Mostrar acum_nota_alum[a]
	FinPara
	
	Mostrar "El promedio de las notas por alumnos es: "
	Mostrar "Nombre   Nota Promedio "
	Para a=1 hasta 5
		Mostrar nombres[a] "         " Sin Saltar
		Mostrar prom_alum[a]
	FinPara
	
	Mostrar ""
	Mostrar "La cantidad de notas aprobadas fue: " cant_aprob " notas"
	Mostrar ""
	Mostrar "El acumulado de todas las notas es: " sum_notas
	
	
FinAlgoritmo

Funcion nota <- validarNotaEnRango(nota_menor, nota_mayor)
	Repetir
		Mostrar "Ingrese en el rango " nota_menor " a " nota_mayor
		Leer nota
	Hasta Que (nota>=nota_menor Y nota<=nota_mayor)
FinFuncion