//1 -  Cargar un arreglo con 10 numeros enteros y mostrar://	a.- El arreglo cargado//	b.- Los numeros cargados en el arreglo, ordenados de forma ascendente//	c.- Los numeros cargados en el arreglo, ordenados de forma descendente 

SubProceso Cargar_Arreglos(Nums Por Referencia,Nums_Asc Por Referencia,Nums_Dsc Por Referencia)
	Para i=1 hasta 10
		Num=Aleatorio(1,100)
		Nums[i]=Num
		Nums_Asc[i]=Num
		Nums_Dsc[i]=Num
	FinPara
FinSubProceso

Subproceso Ordenam_Ascendente(Nums_Asc Por Referencia)
	Para i=1 hasta 9
		Para j=1 hasta 9
			Si Nums_Asc[j]>Nums_Asc[j+1] entonces
				aux=Nums_Asc[j]
				Nums_Asc[j]=Nums_Asc[j+1]
				Nums_Asc[j+1]=aux
			FinSi
		FinPara
	FinPara
FinSubProceso

Subproceso Ordenam_Descendente(Nums_Dsc Por Referencia)
	Para i=1 hasta 9
		Para j=1 hasta 9
			Si Nums_Dsc[j]<Nums_Dsc[j+1] entonces
				aux=Nums_Dsc[j]
				Nums_Dsc[j]=Nums_Dsc[j+1]
				Nums_Dsc[j+1]=aux
			FinSi
		FinPara
	FinPara
FinSubProceso

Subproceso Mostrar_Arreglos(Nums,Nums_Asc,Nums_Dsc)
	Mostrar "Listado de números SIN ordenar"
	Para i=1 hasta 10
		Mostrar Nums[i] Sin Saltar
		Si i<10 
			entonces Mostrar ", " Sin Saltar
			sino Mostrar ""
		FinSi
	FinPara
	Mostrar ""
	Mostrar "Listado de números ordenados de manera ASCENDENTE"
	Para i=1 hasta 10
		Mostrar Nums_Asc[i] Sin Saltar
		Si i<10 
			entonces Mostrar ", " Sin Saltar
		sino Mostrar ""
		FinSi
	FinPara
	Mostrar ""
	Mostrar "Listado de números ordenados de manera DESCENDENTE"
	Para i=1 hasta 10
		Mostrar Nums_Dsc[i] Sin Saltar
		Si i<10 
			entonces Mostrar ", " Sin Saltar
		sino Mostrar ""
		FinSi
	FinPara
FinSubProceso

Algoritmo Ordenar_Nums
	Dimension Nums[10],Nums_Asc[10],Nums_Dsc[10]
	Cargar_Arreglos(Nums,Nums_Asc,Nums_Dsc)
	Ordenam_Ascendente(Nums_Asc)
	Ordenam_Descendente(Nums_Dsc)
	Mostrar_Arreglos(Nums,Nums_Asc,Nums_Dsc)
FinAlgoritmo

















