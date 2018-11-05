
SubProceso Cargar_Arr_Numeros(nums por Referencia)
	Para i=1 hasta 10
		nums[i]= Aleatorio(1,100)
	FinPara
FinSubProceso 

SubProceso Burbuja_Descendente(nums,tamaño)
	Para i=1 hasta tamaño-1
		para j=1 hasta tamaño-1
			Si nums[j] < nums[j+1]
				aux=nums[j]
				nums[j]=nums[j+1]
				nums[j+1]=aux
			FinSi
		FinPara
	FinPara
FinSubProceso

SubProceso Burbuja_Ascendente(nums,tamaño)
	Para i=1 hasta tamaño-1
		para j=1 hasta tamaño-1
			Si nums[j] > nums[j+1]
				aux=nums[j]
				nums[j]=nums[j+1]
				nums[j+1]=aux
			FinSi
		FinPara
	FinPara
FinSubProceso

SubProceso Mostrar_arreglos(nums,tamaño)
	Burbuja_Descendente(nums,tamaño)
	Mostrar ""
	Mostrar "Arreglo ordenado en descendente"
	Para i=1 hasta tamaño
		Mostrar "" i ") " nums[i]
	FinPara
	Burbuja_Ascendente(nums,tamaño)
	Mostrar ""
	Mostrar "Arreglo ordenado en ascendente"
	Para i=1 hasta tamaño
		Mostrar "" i ") " nums[i]
	FinPara
	
	
FinSubProceso

Algoritmo Ordenamiento
	Dimension nums[10]
	tamaño=10
	Cargar_Arr_Numeros(nums)
	Mostrar ""
	Mostrar "El arreglo original es: "
	Para i=1 hasta tamaño
		Mostrar " " i ") " nums[i]
	FinPara
	Mostrar_arreglos(nums,tamaño)
	
FinAlgoritmo
