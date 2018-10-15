Algoritmo Tienda_Fran
	Definir Talla_Fran como caracter
	Definir prec_unit Como Real
	Definir cant_unid Como Entero
	Definir Mto_predscto,porc_dscto,Mto_dscto,Total_A_pagar Como Real
	// BLOQUE DE ENTRADAS
	Mostrar "Ingrese la talla de franela escogida" Sin Saltar
	Leer Talla_Fran
	Mostrar "Ingrese la cantidad de franelas en la compra" Sin Saltar
	Leer cant_unid
	// BLOQUE DE PROCESO
	Talla_Fran=Mayusculas(Talla_Fran)
	Segun Talla_Fran hacer
		"S":prec_unit=2250
		"M":prec_unit=3000
		"L":prec_unit=4500
		"XL":prec_unit=5750	
		De otro modo:prec_unit=0	
	FinSegun
	Mto_predscto=prec_unit*cant_unid
	Si cant_unid>=6 y cant_unid<=11
		entonces porc_dscto=5/100
		sino si cant_unid>=12 y cant_unid<=24
				entonces porc_dscto=10/100
				sino Si cant_unid>24
					    entonces porc_dscto=15/100
						sino porc_dscto=0
					FinSi
			FinSi	
	FinSi
	Mto_dscto=Mto_predscto*porc_dscto
	Total_A_pagar=Mto_predscto-Mto_dscto
	// BLOQUE DE SALIDA
	Si prec_unit>0 
		Entonces
			Mostrar "Talla seleccionada: " Talla_Fran
			Mostrar "Cantidad de unidades: " cant_unid
			Mostrar "Mto del descto: " Mto_dscto " Bs"
			Mostrar "El total a pagar es: " Total_A_pagar " Bs"
		Sino mostrar "La talla ingresada no es válida"
	FinSi		
FinAlgoritmo
