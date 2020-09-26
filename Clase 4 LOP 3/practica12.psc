Algoritmo prac_cap12
	Definir a, b Como Entero
	Mostrar "Este programa muestra la tabla de multiplicar"
	Mostrar "Debe ingresar con que numero desea inciar la tabla"
	Mostrar "y debe indicar el numero de cierre de la tabla"
	Mostrar ""
	Mostrar "Ej: tabla del 2 al 5"
	Mostrar "Entonces debe ingresar primero 2 y luego 5"
	Mostrar ""
	Mostrar "Ingrese el primer parametro: " Sin Saltar
	Leer a
	Mostrar "Ingrese el segundo parametro: " Sin Saltar
	Leer b
	
	Mostrar "Tabla de Multiplicar del " a " al " b
	Para i=a hasta b
		Mostrar "Tabla del " i
		Para j=1 hasta 10
			Mostrar i " * " j " = " i*j
		FinPara
	FinPara
FinAlgoritmo
