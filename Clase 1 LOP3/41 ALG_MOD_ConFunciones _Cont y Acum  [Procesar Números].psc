//Teniendo N números enteros positivos, muestre:  //	a.- Cuantos ceros introduce el usuario//	b.- Cuantos números son mayores de 500 pero menores de 800.  //	c.- Cuantos números son pares y cuantos son impares. 
//  d.- Acumulado de todos los números procesados		
Subproceso Requerir_Cant_Nums_A_Procesar(Cant_Nums_A_Procesar por Referencia)
	Mostrar "Ingrese la cantidad de números a desea procesar" Sin Saltar
	Leer Cant_Nums_A_Procesar
	Mostrar ""
	Mostrar "***** Si algún número ingresado es real se operará con su parte entera *****"
	Mostrar ""
FinSubProceso 

Subproceso Leer_Numero(i,Num Por Referencia,Num_Es_Valido Por Referencia)
	Mostrar "Ingrese el " i "º número positivo" Sin Saltar
	Leer Num
	Num=TRUNC(Num)
	Si num>=0
		entonces Num_Es_Valido=Verdadero
		sino Num_Es_Valido=Falso
	FinSi
FinSubproceso	

Subproceso Inicializar_Parametros(Cant_Ceros Por Referencia,Cant_May500_Men800 Por Referencia,Cant_Pares Por Referencia,Cant_Impares Por Referencia,Acum_Nums Por Referencia)
	Cant_Ceros=0
	Cant_May500_Men800=0
	Cant_Pares=0
	Cant_Impares=0
	Acum_Nums=0
FinSubProceso

Funcion contador <- Func_Inc_Cont(contador)
	contador=contador+1
FinFuncion

Funcion acumulador <- Func_Inc_Acum(acumulador,valor_variable)
	acumulador=acumulador+valor_variable
FinFuncion

Subproceso Contar_Pares_E_Impares(Num,Cant_Pares Por Referencia,Cant_Impares Por Referencia)
	Si Num mod 2=0
		entonces Cant_Pares=Func_Inc_Cont(Cant_Pares)
		sino Cant_Impares=Func_Inc_Cont(Cant_Impares)
	FinSi
FinSubProceso

Subproceso Incrementar_Contadores(Num,Num_Validos Por Referencia,Cant_Ceros Por Referencia,Cant_May500_Men800 Por Referencia,Cant_Pares Por Referencia,Cant_Impares Por Referencia)
	Num_Validos=Func_Inc_Cont(Num_Validos)
	Si Num=0 
		entonces Cant_Ceros=Func_Inc_Cont(Cant_Ceros)
	FinSi
	Si Num>500 y Num<800 
		entonces Cant_May500_Men800=Func_Inc_Cont(Cant_May500_Men800)
	FinSi
	Contar_Pares_E_Impares(Num,Cant_Pares,Cant_Impares)
FinSubProceso

Subproceso Mostrar_Resultados(Cant_Nums_A_Procesar,Num_Validos,Cant_Ceros,Cant_May500_Men800,Cant_Pares,Cant_Impares,Acum_Nums)
	//	Limpiar Pantalla
	Mostrar ""
	Mostrar "--------- RESULTADOS DEL PROCESAMIENTO --------- "
	Mostrar " Se procesaron " Num_Validos " de " Cant_Nums_A_Procesar " números ingresados"
	Mostrar "  Cantidad de ceros ingresados: " Cant_Ceros
	Mostrar "  Cantidad de números mayores que 500 y menores de 800: " Cant_May500_Men800
	Mostrar "  Cantidad de pares: " Cant_Pares
	Mostrar "  Cantidad de impares: " Cant_Impares
	Mostrar "  Acumulado de los números válidos ingresados: " Acum_Nums
	Mostrar ""
FinSubProceso


Algoritmo Procesar_Numeros
	Definir Cant_Nums_A_Procesar,i,Cant_Ceros,Cant_May500_Men800,Cant_Pares,Cant_Impares,Num como numero
	Definir Acum_Nums como real
	Definir Num_Es_Valido como logico
	
	Requerir_Cant_Nums_A_Procesar(Cant_Nums_A_Procesar)
	Inicializar_Parametros(Cant_Ceros,Cant_May500_Men800,Cant_Pares,Cant_Impares,Acum_Nums)
	Para i=1 hasta Cant_Nums_A_Procesar
		Leer_Numero(i,Num,Num_Es_Valido)
		Si Num_Es_Valido=Verdadero 
			entonces 
				Incrementar_Contadores(Num,Num_Validos,Cant_Ceros,Cant_May500_Men800,Cant_Pares,Cant_Impares)
				Acum_Nums=Func_Inc_Acum(Acum_Nums,Num)
		FinSi
	FinPara
	Mostrar_Resultados(Cant_Nums_A_Procesar,Num_Validos,Cant_Ceros,Cant_May500_Men800,Cant_Pares,Cant_Impares,Acum_Nums)
	
FinAlgoritmo
