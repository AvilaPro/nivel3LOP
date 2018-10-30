//1) Despu�s de procesar la 5 notas de N alumnos de una secci�n, calcular y mostrar 
//el promedio de notas de c/ alumno, el promedio de notas (0-100) de la secci�n y el 
//porcentaje de aprobados de la secci�n en base a las notas promedio // 2) Contar los alumnos de sexo femenino que tuvieron un promedio mayor a 80 pts 
Subproceso Leer_Caracter(Mensaje,Caract_Val1,Caract_Val2,Caract por referencia)
	Repetir
		Mostrar Mensaje Sin Saltar
		leer caract
		caract=Mayusculas(caract)
	Hasta que (caract=Caract_Val1 o caract=Caract_Val2)
FinSubProceso

Funcion nota<-Lee_nota(Mensaje,ValorMin,ValorMax)
	Repetir 
		Mostrar Mensaje Sin Saltar
		Leer nota
	Hasta Que nota>=ValorMin y nota<=ValorMax
FinFuncion

Algoritmo Prom_Porc
	Definir N,i,j,cant_aprob,alumfem_promMay80 como entero
	Definir nom_alum como caracter
	Definir nota,acum_nota_alum,prom_alum,acum_prom_secc,prom_secc,porc_aprob_secc como real
	
	Mostrar "Ingrese la cantidad de alumnos procesar"
	Leer N
	alumfem_promMay80=0
	cant_aprob=0
	acum_prom_secc=0
	acum_nota_secc=0
	Para i=1 hasta N
		Mostrar "Ingrese el nombre del alumno" Sin Saltar
		Leer nom_alum
		Leer_Caracter("�Sexo del Alumno M/F?","M","F",Sexo)
		acum_nota_alum=0
		Para j=1 hasta 5
			Mensaje="Ingrese la nota "+ConvertirAtexto(j)+"/5" 
			nota=Lee_nota(Mensaje,0,100)
			acum_nota_alum=acum_nota_alum+nota
		FinPara
		prom_alum=acum_nota_alum/5
		Mostrar "El alumno " nom_alum " obtuvo un promedio de " prom_alum
		Mostrar "Presione cualquier tecla para continuar"
     	Esperar tecla
		acum_nota_secc=acum_nota_secc+acum_nota_alum
		acum_prom_secc=acum_prom_secc+prom_alum
		Limpiar Pantalla
		Si prom_alum>=50
			cant_aprob=cant_aprob+1
		FinSi
		Si Sexo="F" y prom_alum>80
			alumfem_promMay80=alumfem_promMay80+1
		FinSi
	FinPara
	porc_aprob_secc=cant_aprob/N*100
	prom_secc=acum_prom_secc/N
	Mostrar "Promedio de la secci�n: " prom_secc "/100 ptos"
	prom_secc=acum_nota_secc/(N*5)
	Mostrar "Promedio de la secci�n: " prom_secc "/100 ptos"
	Mostrar "Cantidad de f�minas con promedio superior a 80 ptos:" alumfem_promMay80
	Mostrar "Porcentaje de aprobados: " porc_aprob_secc "%"
FinAlgoritmo
	