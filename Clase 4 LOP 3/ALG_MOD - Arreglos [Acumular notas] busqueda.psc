//Por cada uno de los 5 estudiantes de Introducción a la Computación se conoce: 
//nota obtenida en el primer parcial y nota obtenida en el segundo parcial. Carga dos 
//arreglos, uno con las notas del primer parcial y otro con las notas del segundo parcial 
//y luego obtener un tercer arreglo con el total acumulado por cada estudiante. 
//Imprimir el arreglo que contiene el total acumulado por cada estudiante. 

SubProceso Cargar_Arr_Notas(Nota1P por Referencia,Nota2P por Referencia,NotaProm Por Referencia)
	Para i=1 hasta 5
		Mostrar "Ingrese las notas del 1er y 2do parcial del " i "º estudiante"
		Leer Nota1P[i],Nota2P[i]
	FinPara
FinSubProceso
SubProceso Nota_Prom(Nota1P,Nota2P,NotaProm por referencia)
	Para i=1 hasta 5
		NotaProm[i]=(Nota1P[i]+Nota2P[i])/2
	FinPara	
FinSubProceso

Funcion mayorpromedio = deteminar_mayor_promedio(NotaProm)
	mayorpromedio=NotaProm[1]
	Para i=2 hasta 5 hacer
		Si NotaProm[i]>mayorpromedio entonces
			mayorpromedio=NotaProm[i]
		FinSi
	FinPara
FinFuncion

Funcion menorpromedio = deteminar_menor_promedio(NotaProm)
	menorpromedio=NotaProm[1]
	Para i=2 hasta 5 hacer
		Si NotaProm[i]<menorpromedio entonces
			menorpromedio=NotaProm[i]
		FinSi
	FinPara
FinFuncion

Subproceso Notas_may_y_men (NotaProm,mayorpromedio,menorpromedio,Notmay Por Referencia, Notmen Por Referencia)
	Para i=1 hasta 5 Hacer
		Si NotaProm[i]=mayorpromedio Entonces
			Notmay[i]="es mayor"
			Notmen[i]=""
		Sino
			Si NotaProm[i]=menorpromedio entonces
				Notmen[i]="es menor"
				Notmay[i]=""
			Sino
				Notmay[i]="No es la mayor nota "
				Notmen[i]="y No es la menor nota "
			FinSi
		FinSi
		
	FinPara
FinSubProceso

SubProceso Acum_Notas(Nota1P,Nota2P,Nota_Acum por referencia)
	Para i=1 hasta 5
		Nota_Acum[i]=Nota1P[i]+Nota2P[i]
	FinPara	
FinSubProceso

Subproceso Mostrar_Acum_Notas(Nota_Acum,NotaProm,Notmay,Notmen,mayorpromedio,menorpromedio)
	Para i= 1 hasta 5 
		Mostrar "La nota acumulada del " i "º estudiante es: " Nota_Acum[i]
		Mostrar "El promedio del " i "º estudiante es : " NotaProm[i]
		Mostrar "La nota promedio del alumno: " Notmay[i] Notmen[i]
		Mostrar ""
	FinPara
	Mostrar ""
	Mostrar "La mayor nota promedio es: " mayorpromedio
	Mostrar "La menor nota promedio es: " menorpromedio
FinSubProceso

Algoritmo sin_titulo
	Dimension Nota1P[5],Nota2P[5],Nota_Acum[5],NotaProm[5],Notmay[5],Notmen[5]
	Cargar_Arr_Notas(Nota1P,Nota2P,NotaProm)
	Acum_Notas(Nota1P,Nota2P,Nota_Acum)
	Nota_Prom(Nota1P,Nota2P,NotaProm)
	mayorpromedio = deteminar_mayor_promedio(NotaProm)
	menorpromedio = deteminar_menor_promedio(NotaProm)
	Notas_may_y_men(NotaProm,mayorpromedio,menorpromedio,Notmay, Notmen)
	Mostrar_Acum_Notas(Nota_Acum,NotaProm,Notmay,Notmen,mayorpromedio,menorpromedio)
FinAlgoritmo
