Subproceso Mostrar_Arr(vi,vf,ArrNum)
	Si vi<vf
		entonces ult_pos=vf
	sino ult_pos=vi
	FinSi
	Para k=vi hasta vf
		Mostrar ArrNum[k] Sin Saltar
		Si vi<vf Y k<10
			Mostrar "," Sin Saltar
		FinSi
		Si vi>vf Y k>1
			Mostrar "," Sin Saltar
		FinSi
	FinPara
	Mostrar ""
FinSubProceso

SubAlgoritmo Burbuja_Ascendente(ArrNum)
	definir aux como entero
	// Mostrado de los valores según cargados
	Mostrar_Arr(1,10,ArrNum)
	// Ordenamiento ascendente
	Para i=1 hasta 9
		Para j=1 hasta 9
			Si ArrNum[j]>ArrNum[j+1] Entonces
				aux=ArrNum[j]
				ArrNum[j]=ArrNum[j+1]
				ArrNum[j+1]=aux
			FinSi
		FinPara
	FinPara
	// Mostrado de los valores ordenados ascendentemente
	Mostrar_Arr(1,10,ArrNum)
FinSubAlgoritmo

SubAlgoritmo Burbuja_Descendente(ArrNum)
definir aux como entero
// Mostrado de los valores según cargados
Mostrar_Arr(1,10,ArrNum)
// Ordenamiento descendente
Para i=1 hasta 9
	Para j=1 hasta 9
		Si ArrNum[j]<ArrNum[j+1] Entonces
			aux=ArrNum[j]
			ArrNum[j]=ArrNum[j+1]
			ArrNum[j+1]=aux
		FinSi
	FinPara
FinPara
// Mostrado de los valores ordenados descendentemente
Mostrar_Arr(1,10,ArrNum)
FinSubAlgoritmo

Algoritmo Burbujas
	dimension ArrNum[10]
	Para i=1 hasta 10
		ArrNum[i]=Aleatorio(0,100)
	FinPara
	
	Mostrar "A continuacion se genera un arreglo aleatorio de 10 numeros"
	Mostrar_Arr(1,10,ArrNum)
	
	Mostrar "Desea ordenar el arreglo en forma ascendente (A) o Descendente (D)?"
	Leer forma
	forma = Mayusculas(forma)
	
	Repetir
		Segun forma
			"A": Burbuja_Ascendente(ArrNum)
				Mostrar "Para salir presione una tecla"
				Esperar Tecla
			"D": Burbuja_Descendente(ArrNum)
				Mostrar "Para salir presione una tecla"
				Esperar Tecla
			De Otro Modo:
				Mostrar "Opcion incorrecta, debe ser: ascendente (A) o Descendente (D)"
		FinSegun
	Hasta Que forma="A" O forma="D"
FinAlgoritmo
	