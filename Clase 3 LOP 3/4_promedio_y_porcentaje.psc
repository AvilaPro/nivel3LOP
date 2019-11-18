

Algoritmo Mayor_Y_Menor
	Definir N Como Entero
	Definir acum_notas_si_aprobaron, acum_notas_no_aprobaron, acum_notas_max, cant_max_nota, acum_notas como Real
	Definir mensaje1, mensaje2 Como Caracter
	
	Repetir
		Mostrar "Ingrese los datos nombre y nota del alumno: "
		Leer nombre, nota
		cant_alum = cant_alum+1
		prom_notas = prom_notas+nota
		Si nota>49
			cant_aprob=cant_aprob+1
		FinSi
		Si nota<50
			cant_reprob=cant_reprob+1
		FinSi
		
		Mostrar "Si desea salir presione la tecla (S)"
		Leer opc
		opc=Mayusculas(opc)
	Hasta Que opc="S"
	
	prom_notas=prom_notas/cant_alum
	porc_aprob=cant_aprob/cant_alum*100
	porc_reprob=cant_reprob/cant_alum*100
	
	Mostrar "El promedio de notas de los alumnos es: " prom_notas
	Mostrar "El porcentaje de los alumnos aprobados es: " porc_aprob " %"
	Mostrar "El porcentaje de los alumnos reprobados es: " porc_reprob " %"
	
FinAlgoritmo
