//Calcular la nota promedio de un conjunto de notas de alumnos. Se usara el valor 
//-99 para detectar el fin del bucle. 
Funcion Nota<-Func_Leer_Nota()
	Repetir 
		Mostrar "Ingrese la nota a procesar" Sin Saltar
		Leer nota
	Hasta Que (nota>=0 y nota<=100) o nota=-99
FinFuncion


Algoritmo PromeHast99Neg
	Definir nota,acum_notas como real
	Definir cont_notas como entero
	nota=0
	acum_notas=0
	cont_notas=0
	Mostrar "Ingrese -99 para terminar el procesamiento de notas"
	Mientras nota<>-99
		Nota=Func_Leer_Nota()
		Si nota<>-99
			entonces 
				cont_notas=cont_notas+1
				acum_notas=acum_notas+nota
			FinSi
	FinMientras
	Si cont_notas>0 entonces
		prom_notas=acum_notas/cont_notas
		sino prom_notas=0
	FinSi
	Mostrar "El promedio dió " prom_notas " ptos." 
FinAlgoritmo
