//Procesar las 5 notas de N alumnos
//Calcular y Mostrar el Promedio de notas de c/ alumno
//el Promedio de notas de la seccion
//el Porcentaje de Aprobados de la seccion en base al Promedio individual
//Contar los Alumnos Femeninos con Promedio Mayor a 80

Funcion varOpcCaracter <- Func_var_opc_caracter(mensaje, opc1, opc2)
	Repetir
		Mostrar mensaje
		Leer varOpc
		varOpcCaracter = Mayusculas(varOpc)
		Si no(varOpcCaracter = opc1 O varOpcCaracter = opc2)
			Mostrar "Debe ingresar un valor valido, ya sea " opc1 " o " opc2
		FinSi
	Hasta Que (varOpcCaracter = opc1 O varOpcCaracter = opc2)
FinFuncion

Algoritmo prac_cap13
	//Definiciones
	Definir nota, acumNota, promNota, acumNotasSecc, contAprob, porcAprob, contFem como Real
	Definir n como Entero
	//Entradas
	Mostrar "Ingrese el numero de alumnos a ser procesados: " Sin Saltar
	Leer n
	acumNotasSecc = 0
	contAprob = 0
	contFem = 0
	//Proceso.
	Para i = 1 hasta n
		acumNota = 0
		promNota = 0
		Para j = 1 hasta 5
			Mostrar "Ingrese la nota " j  " del " i "° alumno: " Sin Saltar
			Leer nota
			acumNota = acumNota + nota
		FinPara
		promNota = acumNota / 5
		Mostrar "El promedio de notas del " i "° alumno es: " promNota
		acumNotasSecc = acumNotasSecc + promNota
		Si promNota >= 80 Entonces
			contAprob = contAprob + 1
			esFem = Func_var_opc_caracter("Indique si es Femenino S/N", "S", "N")
			Si esFem = "S"
				contFem = contFem + 1
			FinSi
		FinSi
	FinPara
	promNotasSecc = acumNotasSecc / n
	porcAprob = (contAprob * 100)/n
	
	//Salidas
	Mostrar ""
	Mostrar ""
	Mostrar "El promedio de notas de la seccion es: " promNotasSecc
	Mostrar "El porcentaje de aprobados de la seccion es: " porcAprob "%"
	Mostrar ""
	Mostrar "El numero de chicas aprobadas es: " contFem
	
FinAlgoritmo
