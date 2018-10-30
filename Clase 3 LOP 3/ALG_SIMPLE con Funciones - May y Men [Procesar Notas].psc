//A una sección se le  aplica una evaluación entre 0 y 100 Puntos. Escriba un 
//programa que lea la nota obtenida de 5 estudiantes y calcule:  
//	
//*Cual fue la nota mayor y quien la obtuvo?//*Cual fue la nota menor y quien la obtuvo?

Algoritmo Procesar_Notas

Definir Nomb Como Caracter 
	Definir Nota,Nota_Ttal,may_nota,men_nota Como Real
	Definir Nombre,Nomb_MayNota,Nomb_MenNota como caracter
	
	may_nota=0
	men_nota=100.01
	Para i<-1 Hasta 5 Hacer
		Mostrar "Buenos días, por favor ingrese el nombre y la nota del " i "º estudiante "
		Leer Nombre,Nota
		si nota>=0 y nota<=100
			Entonces 
			// determinación del mayor valor y quién lo obtuvo (el 1ero para el que se cumple)
				Si nota>may_nota
					entonces 
						may_nota=nota
						nom_MayNota=Mayusculas(Nombre)
					FinSi
			// determinación del mayor valor y quién lo obtuvo (el 1ero para el que se cumple)
				Si nota<men_nota
					entonces 
					men_nota=nota
					nom_MenNota=Mayusculas(Nombre)
				FinSi
			Sino Mostrar "La última nota ingresada no será procesada, por estar fuera de rango"		
		FinSi		
	FinPara
	Mostrar may_nota " es la mayor nota y fue obtenida por " nom_MayNota
	Mostrar men_nota " es la menor nota y fue obtenida por " nom_MenNota
FinAlgoritmo
