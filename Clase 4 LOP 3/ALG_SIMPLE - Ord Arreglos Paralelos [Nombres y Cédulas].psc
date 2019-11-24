Algoritmo Orden_Simultaneo
	Dimension nombres[10],cedulas[10]
	Para i=1 hasta 10
			Mostrar "Ingrese los datos de la " i "º persona: " 
			Mostrar "Nombre" Sin Saltar
			Leer Nombres[i]
			Mostrar "Cédula" Sin Saltar
			Leer cedulas[i]
		FinPara
		Para i=1 hasta 9
			Para j=1 hasta 9
				Si cedulas[j]>cedulas[j+1]
					aux_ced=cedulas[j]
					aux_nom=nombres[j]
					cedulas[j]=cedulas[j+1]
					nombres[j]=nombres[j+1]
					cedulas[j+1]=aux_ced
					nombres[j+1]=aux_nom
				FinSi
			FinPara
		FinPara
		Para i=1 hasta 10
			Mostrar cedulas[i] "," nombres[i]
		FinPara
FinAlgoritmo
//Ejemplo para Elias