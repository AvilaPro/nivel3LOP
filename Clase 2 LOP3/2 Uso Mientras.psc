Algoritmo Uso_Mientras
	Definir nota, acum_notas Como Real
	Definir cont_notas como entero
	nota=0
	acum_notas=0
	cont_notas=0
	Mostrar "Ingrese -99 Si desea terminar el proceso"
	
	Mientras nota<>-99
		Mostrar "Ingrese la nota: " Sin Saltar
		leer nota
		Si nota<>-99 Entonces
			cont_notas=cont_notas+1
			acum_notas=acum_notas+nota
		FinSi
	FinMientras
	Si cont_notas>0 entonces
		prom_notas=acum_notas*cont_notas
		Mostrar "El promedio de notas es: " prom_notas
	FinSi
	
	
	
FinAlgoritmo
