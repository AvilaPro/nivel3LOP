Funcion edadVal=Func_LeerEdad
	Definir edad como Entero 
	
	Repetir
		Mostrar "Edad " Sin Saltar
		Leer edad
	Hasta Que edad>=15 y edad<=70
	edadVal=edad
FinFuncion

Funcion sexoVal=Func_LeerSexo
	Definir sexo Como Caracter
	
	Repetir
		Mostrar "Sexo (F/M)" Sin Saltar
		Leer sexo
		sexo=Mayusculas(sexo)
	Mientras Que (sexo!="F" y sexo!="M")
	sexoVal=sexo
FinFuncion

Subproceso Cargar_Arreglos(nombres Por Referencia,edades Por Referencia,sexos Por Referencia)
	Para i=1 hasta 7
		Mostrar "Ingrese los datos del " i "º estudiante" 
		Mostrar "Nombre " Sin Saltar
		Leer nombres[i]
		edades[i]=Func_LeerEdad
		sexos[i]=Func_LeerSexo
		Mostrar ""
	FinPara
FinSubProceso

Funcion prom_edad=Func_Prom_Edades(edades)
	Definir edad Como Entero
	Definir acum_edades como Real
	
	acum_edades=0
	Para cada edad de edades
		acum_edades=acum_edades+edad
	FinPara
	prom_edad=TRUNC(acum_edades/7)
FinFuncion

Subproceso Most_FemEdadMayProm(nombres,edades,sexos,edad_prom)
	Mostrar "La edad promedio es " edad_prom " años"
	Mostrar "Lás féminas cuyas edad supera al promedio son: " 
	Para i=1 hasta 7
		Si (edades[i]>edad_prom y sexos[i]="F")
			entonces Mostrar nombres[i] " tiene " edades[i] " años"  
		FinSi
	FinPara
FinSubProceso

Algoritmo sin_titulo
	Dimension nombres[7],edades[7],sexos[7]
	Cargar_Arreglos(nombres,edades,sexos)
	edad_prom=Func_Prom_Edades(edades)
	Most_FemEdadMayProm(nombres,edades,sexos,edad_prom)
FinAlgoritmo
