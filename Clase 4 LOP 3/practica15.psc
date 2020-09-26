//Cargar las notas de N estudiantes
//Calcular el Promedio de Notas de la seccion
//Determinar la Menor Nota, mostras las posiciones y cuantas veces
//Determinar la Menor Nota, mostras las posiciones y cuantas veces
Funcion varEnRango <- Verificar_Valor_En_Rango (mensaje, topeInf, topeSup)
	Repetir
		Mostrar mensaje Sin Saltar
		Leer varEnRango
		Si no(varEnRango >= topeInf y varEnRango <= topeSup)
			Mostrar "Debes ingresar un valor entre " topeInf " y " topeSup
		FinSi
	Hasta Que (varEnRango >= topeInf y varEnRango <= topeSup)
FinFuncion

Funcion promedio <- Func_cal_prom_arreglo(n, arreglo)
	acum_notas = 0
	Para j=1 hasta n
		acum_notas = acum_notas + arreglo[j]
	FinPara
	promedio = acum_notas/n
FinFuncion

Funcion menorNota <- Func_menor_arreglo(n, arreglo)
	menorNota = arreglo [1]
	Para k=1 hasta n
		Si arreglo[k] < menorNota
			menorNota = arreglo[k]
		FinSi
	FinPara
FinFuncion

Funcion mayorNota <- Func_mayor_arreglo(n, arreglo)
	mayorNota = arreglo [1]
	Para k=1 hasta n
		Si arreglo[k] > mayorNota
			mayorNota = arreglo[k]
		FinSi
	FinPara
FinFuncion

SubProceso mostrarArreglo(n, arreglo, mensaje1, mensaje2)
	Para j = 1 hasta n
		Mostrar "El " j "° " mensaje1  " del arreglo " mensaje2 " es: " arreglo[j]
	FinPara
FinSubProceso

Algoritmo prac_cap15
	//Declaraciones
	Definir N, cont_menor, cont_mayor Como Entero
	Definir mensaje1 como Caracter
	Definir acum_notas, promedioSeccion Como Real
	
	
	Mostrar "Ingrese el numero de alumnos a registrar: " Sin Saltar
	Leer N
	Dimension notas[N]
	//Carga del arreglo notas
	Limpiar Pantalla
	Mostrar "Ingrese las notas del los alumnos"
	Para i = 1 hasta N
		mensaje1 = "Ingrese la nota del alumno"
		notaLeida = Verificar_Valor_En_Rango (mensaje1, 0, 100)
		notas[i] = notaLeida
	FinPara
	Mostrar "Para continuar presione una tecla"
	Esperar Tecla
	Limpiar Pantalla
	
	//Calculo del promedio
	promedioSeccion = Func_cal_prom_arreglo(N, notas)
	//Calculo de la menor nota
	menorNota = Func_menor_arreglo(N, notas)
	//Determinar cuantas veces y que posiciones
	cont_menor = 1
	Para m=1 hasta N
		Si notas[m] = menorNota
			cont_menor = cont_menor + 1
		FinSi
	FinPara
	Dimension posicionesMenores[cont_menor]
	g=1
	Para h=1 hasta N
		Si notas[h] = menorNota
			posicionesMenores[g] = h
			g=g+1
		FinSi
	FinPara
	
	//Calculo de la mayor nota
	mayorNota = Func_mayor_arreglo(N, notas)
	//Determinar cuantas veces y que posiciones de los mayores
	cont_mayor = 1
	Para m=1 hasta N
		Si notas[m] = mayorNota
			cont_mayor = cont_mayor + 1
		FinSi
	FinPara
	Dimension posicionesMayores[cont_mayor]
	f=1
	Para d=1 hasta N
		Si notas[d] = mayorNota
			posicionesMayores[f] = d
			f=f+1
		FinSi
	FinPara
	
	Mostrar "Para continuar presione una tecla"
	Esperar Tecla
	Limpiar Pantalla
	
	//Salidas
	Mostrar "La lista de notas es la siguiente: "
	mostrarArreglo(N, notas, "nota", "de las notas")
	Mostrar ""
	Mostrar "El promedio de notas de la seccion es: " promedioSeccion
	Mostrar ""
	Mostrar "La menor nota es: " menorNota
	Mostrar "El siguiente numero de estudiantes coindice con esta nota: " cont_menor-1
	Mostrar "Y estan en las siguientes posiciones de la lista: "
	mostrarArreglo(cont_menor, posicionesMenores, "posicion", "de las notas menores")
	Mostrar ""
	Mostrar "La mayor nota es: " mayorNota
	Mostrar "El siguiente numero de estudiantes coindice con esta nota: " cont_mayor-1
	Mostrar "Y estan en las siguientes posiciones de la lista: "
	mostrarArreglo(cont_mayor, posicionesMayores, "posicion", "de las notas mayores")
	
	
	
	
	
	
	
	
	
FinAlgoritmo
