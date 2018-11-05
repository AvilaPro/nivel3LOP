Subproceso Cargar_Arreg_Cedulas(cedulas por referencia)
	Para i=1 hasta 10
		Mostrar "Ingrese la cédula de la " i "º persona: " Sin Saltar
		Leer cedulas[i]
	FinPara
FinSubProceso

Funcion Cedula_A_Buscar <- Func_Leer_CedABusc
	Mostrar ""
	Mostrar "¿Número del cédula que desea buscar? " Sin Saltar
	Leer Cedula_A_Buscar
FinFuncion

Subproceso Buscar_Cedula_Y_Posic(cedula_buscada,cedulas,Cedula_Encontrada por Referencia,Posic_Hallazgo por Referencia)
	Cedula_Encontrada=falso
	i=1
	Repetir
		si cedulas[i]=cedula_buscada
			Entonces 
			Cedula_Encontrada=Verdadero 
			Posic_Hallazgo=i
		sino
			i=i+1
		FinSi
	Hasta Que Cedula_Encontrada=Verdadero o i>10
FinSubproceso

Subproceso Mostrar_Result_Busq(Cedula_A_Buscar,Cedula_Encontrada,Posic)
	Si Cedula_Encontrada=Verdadero
		entonces mostrar "La cédula buscada (" Cedula_A_Buscar ") fue encontrada en la posición " Posic
		sino mostrar "La cédula buscada (" Cedula_A_Buscar ") NO fue encontrada" 
	FinSi	
	Mostrar ""	
FinSubproceso


Algoritmo Buscar_Cedula
	Dimension cedulas[10] 
	
	Cargar_Arreg_Cedulas(cedulas)
	Cedula_A_Buscar=Func_Leer_CedABusc
	Buscar_Cedula_Y_Posic(Cedula_A_Buscar,cedulas,Cedula_Encontrada,Posic)
	Mostrar_Result_Busq(Cedula_A_Buscar,Cedula_Encontrada,Posic)
FinAlgoritmo
