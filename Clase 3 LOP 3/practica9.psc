//A una sección se le  aplica una evaluación entre 0 y 100 Puntos. Escriba un 
//programa que lea la nota obtenida de N estudiantes y calcule:  
//	
//*Cual fue la nota mayor y quien la obtuvo?
//*Cual fue la nota menor y quien la obtuvo?

Funcion varEnRango <- Verificar_Valor_En_Rango (mensaje, topeInf, topeSup)
	Repetir
		Mostrar mensaje Sin Saltar
		Leer varEnRango
		Si no(varEnRango >= topeInf y varEnRango <= topeSup)
			Mostrar "Debes ingresar un valor entre " topeInf " y " topeSup
		FinSi
	Hasta Que (varEnRango >= topeInf y varEnRango <= topeSup)
FinFuncion

Algoritmo prac_cap9_LOP3
	Definir N Como Entero
	Definir nombreAlumno, nombreMayorNota, nombreMenorNota Como Caracter
	Definir notaAlumno, notaMayor, notaMenor Como Real
	
	Mostrar "Ingrese el numero de estudiantes a ser procesados: " Sin Saltar
	Leer N
	nombreMayorNota = ""
	nombreMenorNota = ""
	notaMayor = 0
	notaMenor = 101
	
	Para i = 1 hasta N
		Mostrar "Ingrese el nombre del " i "° estudiante: " Sin Saltar
		Leer nombreAlumno
		notaAlumno = Verificar_Valor_En_Rango ("Ingrese la nota", 0, 100)
		
		//Determinacion de mayor nota
		Si notaAlumno > notaMayor
			notaMayor = notaAlumno
			nombreMayorNota = nombreAlumno
		FinSi
		//Determinacion de menor nota
		Si notaAlumno < notaMenor
			notaMenor = notaAlumno
			nombreMenorNota = nombreAlumno
		FinSi
	FinPara
	
	Mostrar ""
	Mostrar "El numero de estudiantes procesados es: " N
	Mostrar "El estudiante con mayor nota es: " nombreMayorNota
	Mostrar "Su nota fue de " notaMayor " puntos"
	Mostrar ""
	Mostrar "El estudiante con menor nota es: " nombreMenorNota
	Mostrar "Su nota fue de " notaMenor " puntos"
FinAlgoritmo






