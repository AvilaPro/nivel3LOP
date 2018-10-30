Algoritmo Matriz_Numeros
	Dimension Matriz_Nums[4,6]
	Para f=1 hasta 4 
		Para c=1 hasta 6
			Matriz_Nums[f,c]=Aleatorio(-45,45)
		FinPara
	FinPara
	Para f=1 hasta 4 
		Para c=1 hasta 6
			Mostrar "Fila " f " / Columna " c ": " Matriz_Nums[f,c]
		FinPara
	FinPara
FinAlgoritmo
