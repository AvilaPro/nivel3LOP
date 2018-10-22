//A una sección se le  aplica una evaluación entre 0 y 100 Puntos, donde se leen las 
// la nota obtenida hasta que el usuario decida interrumpri el procesamiento, agreguele lo siguiente:   
//	*Promedio de notas de la sección.    
//	*Porcentaje de los aprobados.
//	*Porcentaje de los reprobados. 

Funcion nota<-Func_Leer_Nota(i)
	Repetir
		Mostrar "Ingrese la nota (0/100) del " i "º estudiante "  
		Leer Nota
	Hasta Que Nota>=0 y Nota<=100
FinFuncion

Algoritmo Procesar_Notas
	Definir cont_aprob,cont_reprob,estudiante como entero
	Definir acum_notas,prom_notas,porc_aprob,porc_reprob como real
	
	acum_notas=0
	cont_aprob=0
	cont_reprob=0
	contador_notas=0
	estudiante=1
	Repetir 
		nota=Func_Leer_Nota(estudiante)
		acum_notas=acum_notas+nota
		contador_notas=contador_notas+1
		Si nota>=50
			entonces cont_aprob=cont_aprob+1
			sino cont_reprob=cont_reprob+1
		FinSi
		Mostrar "¿Continuar el procesamiento (S/N)?"
		Leer Respuesta
		Si Mayusculas(Respuesta)="S"
			entonces estudiante=estudiante+1
		FinSi
	Hasta Que Mayusculas(Respuesta)="N"
	prom_notas=acum_notas/contador_notas
	porc_aprob=cont_aprob/contador_notas*100
	porc_reprob=cont_reprob/contador_notas*100
	Mostrar "Promedio de todas las notas: "  prom_notas " ptos"
	Mostrar "Porcentaje de aprobados: "  porc_aprob "%"
	Mostrar "Porcentaje de reprobados: "  porc_reprob "%"
FinAlgoritmo
