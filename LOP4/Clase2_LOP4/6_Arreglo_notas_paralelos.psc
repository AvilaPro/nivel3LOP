Funcion Nota<-Func_Leer_Nota(parcial) 
	Repetir 
		Mostrar "Ingrese la nota del " parcial " parcial" Sin Saltar
		Leer  nota
	Hasta Que nota>=0 y nota<=20
FinFuncion
Subproceso Cargar_Arreglos(nombres por Referencia,nota1P por Referencia,nota2P por Referencia)
	Para i=1 hasta 5
		Mostrar "Ingrese la información del " i "º estudiante" 
		Mostrar "Ingrese el nombre" Sin Saltar
		Leer nombres[i]
		nota1P[i]=Func_Leer_Nota("I") 
		nota2P[i]=Func_Leer_Nota("II")
	FinPara
FinSubProceso

Subproceso Acumular_Notas(nota1P,nota2P,notaAcum por referencia)
	Para i= 1 hasta 5 
		notaAcum[i]=nota1P[i]+nota2P[i]
	FinPara
FinSubProceso

Subproceso Promediar_Notas(notaAcum,notaprom por referencia)
	Para i= 1 hasta 5 
		notaprom[i]=(notaAcum[i])/2
	FinPara
FinSubProceso

Subproceso Determinar_MayYMenProm(notaProm,mayNota Por Referencia,menNota Por Referencia)
	mayNota=notaProm[1]
	menNota=notaProm[1]
	Para i=2 hasta 5
		Si notaProm[i]>mayNota
			maynota=notaProm[i]
		FinSi
		Si  notaProm[i]<menNota
			menNota=notaProm[i]
		FinSi	
	FinPara
FinSubProceso

Subproceso Mostrar_Salidas(notaAcum,notaProm,mayNota,menNota)
	Para i=1 hasta 5
		Mostrar i "º estudiante -> Acumulado: " notaAcum[i] " / Promedio: " notaProm[i]
	FinPara
	Mostrar "El mayor promedio fue: " mayNota
	Mostrar "El menor promedio fue: " menNota
FinSubProceso

Subproceso Listar_MayorNota(nombres,notaProm,mayNota)
	cant_est_maynota=0
	Mostrar "Estudiantes en obtener la mayor nota:"
	Para i=1 hasta 5
		Si notaProm[i]=mayNota entonces
			cant_est_maynota=cant_est_maynota+1
			mostrar nombres[i] " (Posición: " i ")"
		FinSi
	FinPara
	Mostrar cant_est_maynota " estudiantes obtuvieron la mayor nota"
FinSubProceso

Subproceso Buscar_Nota_Unica(notaProm)
	Definir nota_buscada como real
	Definir encontrada como logico
	Mostrar "Ingrese la nota promedio a buscar (única): " Sin Saltar
	Leer nota_buscada
	encontrada=falso
	i=1
	posicion=0
	Repetir
		Si notaProm[i]=nota_buscada
			entonces 
				encontrada=verdadero
				posicion=i
			sino i=i+1
		FinSi
	Hasta Que encontrada=verdadero o i>5
	Si posicion<>0
		entonces mostrar "La nota " nota_buscada " se encontró en la posición " posicion 
	sino mostrar "La nota buscada no fue encontrada"
	FinSi
FinSubProceso

Subproceso Mostrar_Nota_Duplicada(notaProm)
	Definir nota_buscada como real
	Mostrar "Ingrese la nota promedio a buscar: " Sin Saltar
	Leer nota_buscada
	Mostrar nota_buscada " está en las siguientes posiciones"
	Para i=1 hasta 5
		Si notaProm[i]=nota_buscada
			mostrar " posicion:" i 
		FinSi
	FinPara
FinSubProceso

Algoritmo proc_notas
	Dimension nombres[5]
	Dimension nota1P[5]
	Dimension nota2P[5]
	Dimension notaAcum[5]
	Dimension notaprom[5]
	Cargar_Arreglos(nombres,nota1P,nota2P)
	Acumular_Notas(nota1P,nota2P,notaAcum)
	Promediar_Notas(notaAcum,notaProm)
	Determinar_MayYMenProm(notaProm,mayNota,menNota)
	Mostrar_Salidas(notaAcum,notaProm,mayNota,menNota)
	Listar_MayorNota(nombres,notaProm,mayNota)
	Buscar_Nota_Unica(notaProm)
	Mostrar_Nota_Duplicada(notaProm)
FinAlgoritmo
