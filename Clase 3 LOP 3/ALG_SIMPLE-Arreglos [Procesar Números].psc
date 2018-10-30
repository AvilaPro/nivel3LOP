Algoritmo Nums_Pos_Y_Neg
	repetir
	mostrar "Ingrese la cantidad de números generar"
	Leer cant_nums
	hasta que cant_nums>0
	Dimension nums[cant_nums]
	// Carga del arreglo
	Para i=1 hasta cant_nums
		nums[i]=Aleatorio(-20,20)
	FinPara
	// Contar los números positivos
	Mostrar "Listado de Positivos"
	cont_positivos=0
	Para i=1 hasta cant_nums
		Si nums[i]>0 entonces
			cont_positivos=cont_positivos+1
			Mostrar "En la posición " i " está el número " nums[i]
		FinSi
	FinPara
	Mostrar ""
	Mostrar "Fueron ingresados " cont_positivos " números positivos" 
	Mostrar ""
	Mostrar "Listado de Negativos"
	// Mostrar los números negativos
	cont_negativos=0
	Para i=1 hasta cant_nums	
		Si nums[i]<0 entonces
			cont_negativos=cont_negativos+1
			Mostrar i "º número: " nums[i]
		FinSi
	FinPara
	Mostrar ""
	Mostrar "Fueron ingresados " cont_negativos " números negativos" 
FinAlgoritmo
