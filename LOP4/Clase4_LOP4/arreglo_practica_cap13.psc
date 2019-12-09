Algoritmo sin_titulo
	Definir matriz_notas, acum_nota_alum, prom_alum, promedio_notas Como Real
	Definir nombres como caracter
	Dimension nombres[5]
	Dimension matriz_notas[5,3]
	Dimension acum_nota_alum[5]
	Dimension prom_alum[5]
	Para i=1 hasta 5
		Mostrar "Ingrese el nombre del " i "� alumno: "
		Leer nombres[i]
	FinPara
	
	Para a=1 hasta 5
		Mostrar "Para el alumno " nombres[a]
		Para n=1 hasta 3
			//Mostrar "La nota " n "�"
			matriz_notas[a,n] = validarNotaEnRango(0, 100)
		FinPara
	FinPara
	
	cant_aprob=0
	acum_notas=0
	nota_mayor=0
	nota_menor=100
	Para a=1 hasta 5
		para n=1 hasta 3
			sum_notas=sum_notas_notas + matriz_notas[a,n]
			acum_nota_alum[a]=acum_nota_alum[a]+matriz_notas[a,n]
			Si matriz_notas[a,n]>=50
				cant_aprob=cant_aprob+1
			FinSi
			Si matriz_notas[a,n]>nota_mayor
				nota_mayor = matriz_notas[a,n]
			FinSi
			Si matriz_notas[a,n]<nota_menor
				nota_menor = matriz_notas[a,n]
			FinSi
		FinPara
	FinPara
	
	Para a=1 hasta 5
		prom_alum[a]=acum_nota_alum[a]/3
	FinPara
	
	promedio_notas = funcDetPromNotas(matriz_notas)
	
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
	
	Mostrar "Los nombres de los alumnos que superaron el promedio son: "
	Mostrar "Nombre   Nota Promedio "
	Para a=1 hasta 5
		Si prom_alum[a] > promedio_notas
			Mostrar nombres[a] "         " Sin Saltar
			Mostrar prom_alum[a]
		FinSi
	FinPara
	
	Mostrar "Los nombres de los alumnos que obtuvieron la mayor nota son: "
	Mostrar "La mayor nota es: " Sin Saltar
	Mostrar nota_mayor
	Mostrar "Nombre  "
	Para f=1 hasta 5
		Para c=1 hasta 3
			Si matriz_notas[f,c] = nota_mayor
				Mostrar nombres[f] " en el " c "� parcial"
			FinSi
		FinPara
	FinPara
	
	Mostrar "Los nombres de los alumnos que obtuvieron la menor nota son: "
	Mostrar "La menor nota es: " Sin Saltar
	Mostrar nota_menor
	Mostrar "Nombre  "
	Para f=1 hasta 5
		Para c=1 hasta 3
			Si matriz_notas[f,c] = nota_menor
				Mostrar nombres[f] " en el " c "� parcial"
			FinSi
		FinPara
	FinPara
	
	Mostrar ""
	Mostrar "La cantidad de notas aprobadas fue: " cant_aprob " notas"
	Mostrar ""
	Mostrar "El acumulado de todas las notas es: " sum_notas
	Mostrar ""
	Mostrar "El promedio general de las notas es: " promedio_notas
	
	
FinAlgoritmo

Funcion nota <- validarNotaEnRango(nota_menor, nota_mayor)
	Repetir
		Mostrar "Ingrese en el rango " nota_menor " a " nota_mayor
		Leer nota
	Hasta Que (nota>=nota_menor Y nota<=nota_mayor)
FinFuncion

Funcion prom_notas <- funcDetPromNotas(matriz_notas)
	acum_nota=0
	Para f=1 hasta 5
		Para c=1 hasta 3
			acum_nota = acum_nota + matriz_notas[f,c]
		FinPara
	FinPara
	prom_notas = acum_nota/15
FinFuncion
	