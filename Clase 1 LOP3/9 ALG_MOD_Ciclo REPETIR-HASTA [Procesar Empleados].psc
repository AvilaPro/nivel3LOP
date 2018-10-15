//De cada uno de los empleados de una empresa se conoce: nombre, sexo (M, F) 
//y edad. Se desea un informe que contenga:   //	- Cantidad de empleados de sexo femenino, mayores de 50 a�os.   
//	- Cantidad de empleados de sexo masculino.  //	- Cantidad de empleados de la empresa.
//  - Nombre del 1er empleado que tiene la menor edad	
//	No se conoce de antemano el numero de empleados de la empresa (usar repita  
//	preguntando al usuario si desea continuar) 

Funcion Caracter_Leido<-Func_Leer_CarVal(Mensaje,Valor_Val1,Valor_Val2)
	Repetir
		Mostrar Mensaje Sin Saltar
		Leer Caracter_Leido
		Caracter_Leido=Mayusculas(Caracter_Leido)
	Hasta Que Caracter_Leido=Valor_Val1 o Caracter_Leido=Valor_Val2 
FinFuncion

Funcion Edad_Leida<-Func_Leer_Edad
	Repetir
		Mostrar "�Edad (Mayor a 17 a�os)?" Sin Saltar
		Leer Edad_Leida
		Si Edad_Leida<18 
			entonces Mostrar "�Edad no v�lida!"
		FinSi
	Hasta Que Edad_Leida>=18
FinFuncion

Subproceso Inicializar_Variables(Cant_Emp_Fem_M50 Por Referencia,Cant_Emp_Masc Por Referencia,Cant_Emp Por Referencia)
	Cant_Emp_Fem_M50=0
	Cant_Emp_Masc=0
	Cant_Emp=0
FinSubProceso

Subproceso Leer_Datos_Emp(Nomb_Emp Por Referencia,Edad_Emp Por Referencia,Sexo_Emp  Por Referencia)
	Mostrar "Ingrese la informaci�n del empleado..."
	Mostrar "�Nombre?" Sin Saltar
	Leer Nomb_Emp 
	Edad_Emp=Func_Leer_Edad	
	Sexo_Emp=Func_Leer_CarVal("�Sexo (F/M)?","F","M")
FinSubProceso

Subproceso Incrementar_Contadores(Edad_Emp,Sexo_Emp,Cant_Emp_Fem_M50 Por Referencia,Cant_Emp_Masc Por Referencia,Cant_Emp Por Referencia)
	Cant_Emp=Cant_Emp+1
	Si Edad_Emp>50 y Sexo_Emp="F"
		entonces Cant_Emp_Fem_M50=Cant_Emp_Fem_M50+1
	FinSi
	Si Sexo_Emp="M"
		entonces Cant_Emp_Masc=Cant_Emp_Masc+1
	FinSi
FinSubProceso

Subproceso Mostrar_Resultados(Cant_Emp_Fem_M50,Cant_Emp_Masc,Cant_Emp)
	Limpiar Pantalla
	Mostrar "----- RESULTADOS DEL PROCESAMIENTO -----"
	Mostrar "Cantidad de f�minas mayores de 50 a�os: " Cant_Emp_Fem_M50
	Mostrar "Cantidad de empleados de sexo masculino: " Cant_Emp_Masc
	Mostrar "Empleados procesados: " Cant_Emp 
FinSubProceso

Algoritmo Procesar_Empleados
	Inicializar_Variables(Cant_Emp_Fem_M50,Cant_Emp_Masc,Cant_Emp)
	Repetir
		Leer_Datos_Emp(Nomb_Emp,Edad_Emp,Sexo_Emp)
		Incrementar_Contadores(Edad_Emp,Sexo_Emp,Cant_Emp_Fem_M50,Cant_Emp_Masc,Cant_Emp)
		Respuesta=Func_Leer_CarVal("�Desea continuar procesando informaci�n (S/N)?","S","N")
	Hasta Que Respuesta="N"
	Mostrar_Resultados(Cant_Emp_Fem_M50,Cant_Emp_Masc,Cant_Emp)
FinAlgoritmo
