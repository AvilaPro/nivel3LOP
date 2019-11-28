Funcion es_numero <- Func_validar_numero(caract)
	Definir caracteres_numericos, caract_num como caracter
	Definir Long_carac_nums, i como entero
	
	
	caracteres_numericos = "1234567890"
	Long_carac_nums= Longitud(caracteres_numericos)
	i=1
	Repetir
		carac_num = Subcadena(caracteres_numericos, i, i)
		es_numero = (caract = carac_num)
		i=i+1
	Hasta Que (es_numero O i > Long_carac_nums) 
FinFuncion

Funcion es_simbolo <- Func_validar_simbolo(caract)
	Definir caracteres_simbolicos, caract_sim como caracter
	Definir Long_carac_simb, i como entero
	
	
	caracteres_simbolicos = "."
	Long_carac_simb = Longitud(caracteres_simbolicos)
	i=1
	Repetir
		carac_sim = Subcadena(caracteres_simbolicos, i, i)
		es_simbolo = (caract = carac_sim)
		i=i+1
	Hasta Que (es_simbolo O i > Long_carac_simb) 
FinFuncion

Funcion valor_valido <- Func_validar_entero(Mensaje)
	Definir cad_caracteres, carac_i como caracter
	Definir caracterEsNumero, caracterEsSimbolo como logico
	Definir i, Long_cadena, acum_simb como entero
	acum_simb=0
	Repetir
		Mostrar mensaje Sin Saltar
		Leer cad_caracteres
		Long_cadena = Longitud(cad_caracteres)
		i=1
		Repetir
			carac_i = Subcadena(cad_caracteres,i,i)
			caracterEsNumero = Func_validar_numero(carac_i)
			Si ~caracterEsNumero
				caracterEsSimbolo = Func_validar_simbolo(carac_i)
				Si caracterEsSimbolo
					acum_simb=acum_simb+1
				FinSi
			FinSi
			i=i+1
		Hasta Que (acum_simb > 1 O i > Long_cadena)
		Si acum_simb>1
			Mostrar "Hay mas de un punto en la cadena de caracteres"
			valor_valido=Falso
		Sino
			Si acum_simb<2 Y i=Long_cadena
				valor_valido=Verdadero
			FinSi
		FinSi
		
	Hasta Que i > Long_cadena
FinFuncion

Algoritmo sin_titulo
	Definir valor_valido Como Logico
	Definir Mensaje1 Como Caracter
	
	Mensaje1="A continuacion ingrese un numero Real: "
	
	val_valido = Func_validar_entero(Mensaje1)
	
	Si ~val_valido
		Mostrar "El numero ingresado es incorrecto"
	Sino
		Mostrar cad_caracteres
		Mostrar "Este numero ingresado es correcto"
	FinSi
FinAlgoritmo
