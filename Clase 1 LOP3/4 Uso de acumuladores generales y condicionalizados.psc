Algoritmo acumuladores_seccion
	Definir i Como Real
	Definir acumulador_Aprovado,acumulador_Reprovado,acumulador_Excelente Como Real
	definir alumnos como entero
	definir nombre Como Caracter
	definir nota Como Real
	
	
	//definicion de acumuladores 
	acumulador_Aprovado=0
	acumulador_Reprovado=0
	acumulador_Excelente=0
	alumnos=0
	
	para i=1 Hasta 10 Hacer
	Mostrar "Introduzca el nombre del estudiante °" i	
	Leer  nombre
	Mostrar ""
	
	Mostrar nombre " Introduzca su nota como estudiante ° " i
	Leer nota
	Mostrar ""
	
	segun nota
		100:acumulador_Excelente=acumulador_Excelente+1
	FinSegun
	
	si nota>=50 Entonces
		acumulador_Aprovado=acumulador_Aprovado+1
	sino 
		si nota<50 entonces
			acumulador_Reprovado=acumulador_Reprovado+1		
		FinSi
	FinSi
	alumnos=alumnos+1
	FinPara
	
	Mostrar "Aprovaron: " acumulador_Aprovado 
	Mostrar "Reprovaron " acumulador_Reprovado
	Mostrar "Nerds: " acumulador_Excelente
	Mostrar "Fueron procesados " alumnos " alumnos"
FinAlgoritmo
