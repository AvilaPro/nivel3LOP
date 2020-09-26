Funcion noRepite <- Func_no_repite(n, arreglo, datoABuscar)
	noRepite = Verdadero
	k=1
	Repetir
		Si arreglo[k] = datoABuscar
			noRepite = Falso
		Sino
			k = k+1
		FinSi
	Hasta Que (noRepite = Falso O k>n) 
FinFuncion

Funcion varOpcCaracter <- Func_var_opc_caracter(mensaje, opc1, opc2)
	Repetir
		Mostrar mensaje
		Leer varOpc
		varOpcCaracter = Mayusculas(varOpc)
		Si no(varOpcCaracter = opc1 O varOpcCaracter = opc2)
			Mostrar "Debe ingresar un valor valido, ya sea " opc1 " o " opc2
		FinSi
	Hasta Que (varOpcCaracter = opc1 O varOpcCaracter = opc2)
FinFuncion

SubProceso mostrarArreglo (n, arreglo, mensaje1, mensaje2)
	Para j = 1 hasta n
		Mostrar "El " j "° " mensaje1  " del arreglo " mensaje2 " es: " arreglo[j]
	FinPara
FinSubProceso


Algoritmo prac_cap14
	//Definiciones
	Definir N Como Entero
	Definir no_repite Como Logico
	
	//Entradas
	Mostrar "Ingrese el numero de productos a registrar: " Sin Saltar
	Leer N
	Dimension codParts[N]
	Dimension codPartsVendidos[N]
	
	//Cargar datos al arreglo de codigos y verificar no repitencia
	Para i=1 hasta N
		no_repite = Falso
		Repetir
			Mostrar "Ingrese el " i "° codigo a registrar: " Sin Saltar
			Leer codigo
			no_repite = Func_no_repite(N, codParts, codigo)
		Hasta Que (no_repite = Verdadero)
		Si no_repite = Verdadero
			codParts[i] = codigo
		FinSi
	FinPara
	Mostrar "SE HA REGISTRADO EXITOSAMENTE EL ARREGLO DE CODIGOS"
	Mostrar "Presione una tecla para continuar"
	Esperar Tecla
	//Registro de codigos de ventas
	Limpiar Pantalla
	Mostrar "Ingrese ahora los codigos vendidos en el dia"
	m=1
	Repetir
		Mostrar "Ingrese " m "° codigo vendido: " Sin Saltar
		Leer codigoVendido
		no_rep_reg = Func_no_repite(N, codParts, codigoVendido)
		Si no_rep_reg = Verdadero
			Mostrar "Debes ingresar un codigo valido"
			consulta1 = Func_var_opc_caracter("Deseas ver el arreglo? S/N", "S", "N")
			Si consulta1 = "S"
				mostrarArreglo(N, codParts, "codigo", "de codigos de partes")
				Mostrar "Si deseas reintentar, presiona una tecla"
				Esperar Tecla
			FinSi
		FinSi
		Si no_rep_reg = Falso
			no_rep_arr_vend = Func_no_repite(N, codPartsVendidos, codigoVendido)
			Si no_rep_arr_vend = Verdadero
				codPartsVendidos[m] = codigoVendido
				m = m+1
			FinSi
			consulta2 = Func_var_opc_caracter("Deseas registrar otro codigo vendido? S/N", "S", "N")
		FinSi
	Hasta Que no_rep_reg = Falso Y no_rep_arr_vend = Verdadero Y consulta2 = "N"
	
	Mostrar ""
	Mostrar "Para continuar presione una tecla"
	Esperar Tecla
	Limpiar Pantalla
	mostrarArreglo(N, codParts, "codigo", "de codigos de partes")
	Mostrar ""
	mostrarArreglo(N, codPartsVendidos, "codigo", "de codigos de partes vendidos")
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
FinAlgoritmo
