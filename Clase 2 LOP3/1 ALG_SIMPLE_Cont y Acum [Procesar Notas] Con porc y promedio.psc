//A una sección se le  aplica una evaluación entre 0 y 100 Puntos. Escriba un  programa que lea el nombre y la nota obtenida de 5 estudiantes y calcule:  
//	*Numero de estudiantes con nota perfecta, es decir 100 puntos.  
//	*Cuanta nota acumularon los 5 alumnos    
//	*El acumulado de notas de los estudiantes que no aprobaron   
//	*El acumulado de notas de los estudiantes que aprobaron 
	
Algoritmo Procesar_Notas
	Definir cant_100 como entero
	Definir acum_notas,acum_not_aprob,acum_Nota_reprob como real
	Definir nombre,Nombre_mayor_nota,Nombre_menor_nota como caracter
	
	
	cant_100=0
	acum_notas=0
	acum_not_aprob=0
	acum_Nota_reprob=0
	aux_mayor_nota=0
	aux_menor_nota=101
	
	Para i=1 hasta 5
		Repetir
			Escribir "Estudiante Nº " i
			Escribir "Escriba el nombre del estuduante: " Sin Saltar
			Leer nombre
			Mostrar "Escriba la nota del estudiante " nombre " :" Sin Saltar
			Leer nota
		Hasta Que nota>=0 y nota<=100
		Si nota=100
			cant_100=cant_100+1
		FinSi
		acum_notas=acum_notas+nota
		Si nota>=50 entonces 
			acum_not_aprob=acum_not_aprob+nota
			cont_aprob=cont_aprob+1
		sino 
			acum_not_reprob=acum_not_reprob+nota
			cont_reprob=cont_reprob+1
		FinSi
		Si nota > aux_mayor_nota entonces
			aux_mayor_nota=nota
			Nombre_mayor_nota=nombre
		Fin Si
		Si nota < aux_menor_nota Entonces
			aux_menor_nota=nota
			Nombre_menor_nota=nombre
		FinSi
	FinPara
	contador_notas=5
	prom_notas=acum_notas/contador_notas
	porc_aprob=cont_aprob/contador_notas*100
	porc_reprob=cont_reprob/contador_notas*100
	Mostrar "Estudiantes con nota perfecta: " cant_100
	Mostrar "Acumulado de todas las notas: "  acum_notas " ptos"
	Mostrar "Acumulado de notas de los aprobados: "  acum_not_aprob " ptos"
	Mostrar "Acumulado de notas de los reprobados: "  acum_not_reprob " ptos"
	Mostrar "Promedio de todas las notas: " prom_notas " ptos"
	Mostrar "Porcentaje de aprobados: " porc_aprob "%"
	Mostrar "Porcentaje de reprobados: " porc_reprob "%"
	Mostrar "La mayor nota fue: " aux_mayor_nota " ptos. Del estudiante: " Nombre_mayor_nota
	Mostrar "La menor nota fue: " aux_menor_nota " ptos. Del estudiante: " Nombre_menor_nota
FinAlgoritmo
