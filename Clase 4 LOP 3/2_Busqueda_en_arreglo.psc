
SubProceso ver_arreglo(N, arreglo, mensaje)
	Para k=1 hasta N
		Mostrar "El codigo " k "° " mensaje " es: " arreglo[k]
	FinPara
FinSubProceso
Funcion no_se_repite <- Func_no_se_repite(N, arreglo, dato_aBuscar)
	no_se_repite=Verdadero
	m=1
	Repetir
		Si arreglo[m]=dato_aBuscar
			no_se_repite=Falso
		SiNo
			m=m+1
		FinSi
	Hasta Que (no_se_repite=Falso) o (m>N)
FinFuncion 

Algoritmo Busqueda_arreglos
	//Bloque de Declaraciones
	Definir N Como Entero
	Definir no_repite, no_repite_reg, no_repite_venta Como Logico
	Definir deseo, deseo2, mensaje1, mensaje2 Como Caracter
	mensaje1="de producto registrado"
	mensaje2="de producto vendido"
	
	//Inidio del Algoritmo
	Mostrar "Cuantos Codigos de productos desea registrar: "
	Leer N
	Dimension cods_parts[N]
	Dimension cods_parts_vendidos[N]
	
	//Bloque de Procesos
	
	//Bloque de registro de codigos y verificacion de anti-repeticion
	Para i=1 hasta N
		no_repite=Falso
		Repetir
			Mostrar "Ingrese el " i "° codigo"
			Leer codigo
			no_repite=Func_no_se_repite(N, cods_parts, codigo)
		Hasta Que no_repite=Verdadero
		Si no_repite=Verdadero Entonces
			cods_parts[i]=codigo
		FinSi
	FinPara
	
	//Bloque que muestra los codigos exitosamente registrados
	ver_arreglo(N, cods_parts, mensaje1)
	Mostrar ""
	Mostrar "Para ingresar los codigos vendidos en el dia PRESIONE UNA TECLA"
	Esperar Tecla
	
	//Bloque de registro de los codigos con ventas en el dia
	Limpiar Pantalla
	Mostrar "Ahora proceda a registrar los codigos vendidos el dia de hoy"
	j=1
	deseo="S"
	Repetir
		no_repite_reg=Verdadero
			Mostrar "Ingrese el " j "° codigo vendido en el dia"
			Leer codigo_vendido
			no_repite_reg=Func_no_se_repite(N, cods_parts, codigo_vendido)
			//Verificacion de que se encentra en el arreglo cods_parts[] 
			Si no_repite_reg=Verdadero
				Mostrar "Debes ingresar un codigo que este regitrado"
				Mostrar "Si desea ver los codigos registrados presione la tecla (S)"
				Mostrar "En caso contrario presionar cualquier otra tecla"
				Leer letra
				letra=Mayusculas(letra)
				Si letra="S"
					ver_arreglo(N, cods_parts, mensaje1)
					Mostrar "Para reingresar codigos vendidos presiones una tecla"
					Esperar Tecla
				FinSi
			FinSi
			Si no_repite_reg=Falso Entonces
				no_repite_venta=Func_no_se_repite(N, cods_parts_vendidos, codigo_vendido)
				Si no_repite_venta=Verdadero
					cods_parts_vendidos[j]=codigo_vendido
					j=j+1
					Mostrar "Desea ingresar otro producto vendido (S) Si /(N) No?"
					Leer deseo
					deseo=Mayusculas(deseo)
				FinSi
			FinSi
			Limpiar Pantalla
	Hasta Que (no_repite_reg=Falso) Y (no_repite_venta=Verdadero) Y (deseo="N")
	
	//Bloque de Salidas
	Mostrar "Desea ver los productos registrados y los productos vendidos (S) Si / (N) No?"
	Leer deseo2
	deseo2=Mayusculas(deseo2)
	Segun deseo2
		"S": ver_arreglo(N, cods_parts, mensaje1)
			Mostrar ""
			ver_arreglo(N, cods_parts_vendidos, mensaje2)
			De otro modo
			Mostrar "Ha seleccionado salir sin mostrar nada"
			Mostrar "HASTA LUEGO!!!"
	FinSegun
FinAlgoritmo
