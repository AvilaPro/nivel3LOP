Algoritmo sin_titulo
	//Bloque de declaraciones
	Definir N, cont_aprobados Como Entero
	Definir acum_secc_nota, acum_nota, porc_aprob, prom_notas_secc Como Real
	Mostrar "Ingrese el numero de estudiantes a ser procesados: "
	Leer N
	Dimension promedios[N]
	acum_secc_nota=0
	cont_aprobados=0
	//Bloque de Procesos
	Para i=1 hasta N
		acum_nota=0
		Para j=1 hasta 5
			Mostrar "Ingrese la nota " j "º del " i "º estudiante"
			Leer nota
			acum_nota=acum_nota+nota
		FinPara
		promedios[i]=acum_nota/5
		acum_secc_nota=acum_secc_nota+promedios[i]
		Si promedios[i]>49
			cont_aprobados=cont_aprobados+1
		FinSi
	FinPara
	prom_notas_secc=acum_secc_nota/N
	porc_aprob=(cont_aprobados/N)*100
	//Bloque de Salidas
	Mostrar "A continuacion se muestran el promedio de notas de cada alumno"
	Mostrar "EL promedio de notas de la seccion y el porcentaje de Aprobados"
	
	Para i=1 hasta N
		Mostrar "El promedio de notas del " i "º Alumno es: "
		Mostrar promedios[i]
	FinPara
	Mostrar ""
	Mostrar "El promedio de notas de la seccion es: " prom_notas_secc " puntos"
	Mostrar ""
	Mostrar "El porcentaje de Alumnos aporbados es: " porc_aprob " %"
FinAlgoritmo
