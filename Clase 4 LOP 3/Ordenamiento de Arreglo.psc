
SubProceso Cargar_Arr_Numeros(nums por Referencia)
	Para i=1 hasta 10
		nums[i]= Aleatorio(1,100)
	FinPara
FinSubProceso 

SubProceso Burbuja_Descendente(nums,tama�o)
	Para i=1 hasta tama�o-1
		para j=1 hasta tama�o-1
			Si nums[j] < nums[j+1]
				aux=nums[j]
				nums[j]=nums[j+1]
				nums[j+1]=aux
			FinSi
		FinPara
	FinPara
FinSubProceso

SubProceso Burbuja_Ascendente(nums,tama�o)
	Para i=1 hasta tama�o-1
		para j=1 hasta tama�o-1
			Si nums[j] > nums[j+1]
				aux=nums[j]
				nums[j]=nums[j+1]
				nums[j+1]=aux
			FinSi
		FinPara
	FinPara
FinSubProceso

SubProceso Mostrar_arreglos(nums,tama�o)
	Burbuja_Descendente(nums,tama�o)
	Mostrar ""
	Mostrar "Arreglo ordenado en descendente"
	Para i=1 hasta tama�o
		Mostrar "" i ") " nums[i]
	FinPara
	Burbuja_Ascendente(nums,tama�o)
	Mostrar ""
	Mostrar "Arreglo ordenado en ascendente"
	Para i=1 hasta tama�o
		Mostrar "" i ") " nums[i]
	FinPara
	
	
FinSubProceso

Algoritmo Ordenamiento
	Dimension nums[10]
	tama�o=10
	Cargar_Arr_Numeros(nums)
	Mostrar ""
	Mostrar "El arreglo original es: "
	Para i=1 hasta tama�o
		Mostrar " " i ") " nums[i]
	FinPara
	Mostrar_arreglos(nums,tama�o)
	
FinAlgoritmo
