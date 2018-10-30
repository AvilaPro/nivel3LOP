
Funcion Num<-Func_Leer_NumEnRango(Mensaje,Tipo_Num,ValMin,ValMax)
		Repetir
			Mostrar Mensaje Sin Saltar
			Leer Num
			Si Tipo_Num=0 // Entero
				entonces Num=Trunc(Num)
			FinSi	
		Hasta Que Num>=ValMin y Num<=ValMax
FinFuncion

Funcion Carac_Leido<-Func_Leer_Caracter(Mensaje,CarVal1,CarVal2)
	Definir caract como caracter
	repetir
		
		mostrar Mensaje Sin Saltar
		Leer Caract
		Carac_Leido=Mayusculas(Caract)
	hasta que Carac_Leido=CarVal1 o Carac_Leido=CarVal2
FinFuncion

Funcion Cad_Formateada<-Func_LeerCad_Format(Mensaje)
	mostrar Mensaje Sin Saltar
	Leer cade
	Cad_Formateada=Mayusculas(Subcadena(cade,1,1))+Minusculas(Subcadena(cade,2,Longitud(cade)))
FinFuncion

Funcion prom_edades<-Func_PromEdad(Cant_Est,Edad) 
	acum_edades=0
	Para i=1 hasta Cant_Est
		acum_edades=acum_edades+edad[i]
	FinPara
	prom_edades=acum_edades/Cant_Est
FinFuncion

Subproceso Cargar_Arreglos(Cant_Est,nombre Por Referencia,edad Por Referencia,sexo Por Referencia)
	Para i=1 hasta Cant_Est
		Mostrar "Ingrese los datos de la " i "º persona"
		Nombre[i]=Func_LeerCad_Format("Nombre")
		Sexo[i]=Func_Leer_Caracter("Sexo de la persona F/M","F","M")
		Edad[i]=Func_Leer_NumEnRango("Edad (0-100)",0,0,100)
		Mostrar ""
	FinPara
FinSubProceso

Subproceso Mostrar_Resultados(Cant_Est,prom_edades,nombre,edad,sexo)
	Limpiar Pantalla
	Mostrar "La edad promedio es " prom_edades " años"
	Mostrar ""
	Mostrar "Féminas con edad superior al promedio "
	Para i=1 hasta Cant_Est
		Si edad[i]>prom_edades y sexo[i]="F" entonces
			Mostrar nombre[i] " tiene " edad[i] " años"
		FinSi	
	FinPara
FinSubProceso

Algoritmo Fem_EdadMayalProm
	Cant_Est=Func_Leer_NumEnRango("¿Cuántas personas desea procesar (1-100)?",0,1,100)
	Dimension nombre[Cant_Est]
	Dimension edad[Cant_Est]
	Dimension sexo[Cant_Est]
	Limpiar Pantalla
	Cargar_Arreglos(Cant_Est,nombre,edad,sexo)
	prom_edades=Func_PromEdad(Cant_Est,Edad) 
	Mostrar_Resultados(Cant_Est,prom_edades,nombre,edad,sexo)
FinAlgoritmo
