
SubAlgoritmo cargarDatos(N, mensaje, dato Por Referencia)
	Para i=1 hasta N
		Mostrar "Ingrese el " i "º " mensaje
		Leer dato[i]
	FinPara
FinSubAlgoritmo

SubAlgoritmo procesarDatos(N, nombre, notas)
	cant_max_nota=0
	nomb_nota_max=""
	acum_nota_max=0
	acum_notas_no_aprobaron=0
	acum_notas_si_aprobaron=0
	Para i=1 hasta N
		Si notas[i]=100
			cant_max_nota=cant_max_nota+1
			nomb_nota_max=nomb_nota_max+","+nombre[i]
		FinSi
		acum_notas=acum_notas+notas[i]
		Si notas[i]<50
			acum_notas_no_aprobaron=acum_notas_no_aprobaron+notas[i]
		FinSi
		Si notas[i]>49
			acum_notas_si_aprobaron=acum_notas_si_aprobaron+notas[i]
		FinSi
	FinPara
	Mostrar "La cantidad de alumnos con la nota maxima es: " cant_max_nota
	Mostrar "Los nombres de los estudiantes con nota maxima son: " nomb_nota_max
	Mostrar "Las notas acumuladas de todos los estudiantes es: " acum_notas
	Mostrar "Las notas acumuladas de los alumnos que no aprobaron es: " acum_notas_no_aprobaron
	Mostrar "Las notas acumuladas de los alumnos que SI aprobaron es: " acum_notas_si_aprobaron
FinSubAlgoritmo

Algoritmo Mayor_Y_Menor
	Definir N Como Entero
	Definir acum_notas_si_aprobaron, acum_notas_no_aprobaron, acum_notas_max, cant_max_nota, acum_notas como Real
	Definir mensaje1, mensaje2 Como Caracter
	
	mensaje1=" nombre "
	mensaje2=" nota"
	
	Mostrar "Ingrese el numero de estudiantes a ser procesados: "
	Leer N
	Dimension nombre[N]
	Dimension notas[N]
	
	cargarDatos(N, mensaje1, nombre)
	cargarDatos(N, mensaje2, notas)
	procesarDatos(N, nombre, notas)
	
FinAlgoritmo
