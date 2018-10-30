Algoritmo DiasDeSemana
	Definir dia como entero
	Dimension Dias_Semana[7]

	Dias_Semana[1]="Lunes"
	Dias_Semana[2]="Martes"
	Dias_Semana[3]="Miercoles"
	Dias_Semana[4]="Jueves"
	Dias_Semana[5]="Viernes"
	Dias_Semana[6]="Sábado"
	Dias_Semana[7]="Domingo"
	Mostrar "Ingrese el día (1-7) cuyo nombre desea mostrar"
	Leer Dia
	// Usando un Si
	Si dia>=1 y dia<=7
		entonces Mostrar Dias_Semana[dia]
		sino Mostrar "El número ingresado está fuera de rango"
	FinSi
	// Usando un Segun
	Segun dia hacer
		1: Mostrar Dias_Semana[1]
		2: Mostrar Dias_Semana[2]
		3: Mostrar Dias_Semana[3]	
		4: Mostrar Dias_Semana[4]	
		5: Mostrar Dias_Semana[5]	
		6: Mostrar Dias_Semana[6]
		7: Mostrar Dias_Semana[7]	
		De Otro Modo:
			Mostrar "El número ingresado está fuera de rango"
	FinSegun
FinAlgoritmo
