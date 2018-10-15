Funcion Carac_Leido<-Func_Leer_Caracter(Mensaje,CarVal1,CarVal2)
	Definir caract como caracter
	repetir
	
		mostrar Mensaje 
		Leer Caract
		Carac_Leido=Mayusculas(Caract)
	hasta que Carac_Leido=CarVal1 o Carac_Leido=CarVal2
	
FinFuncion

Algoritmo sin_titulo
	Sexo=Func_Leer_Caracter("Sexo de la persona F/M","F","M")
	Respuesta= Func_Leer_Caracter("¿Desea continuar S/N?","S","N")
FinAlgoritmo
