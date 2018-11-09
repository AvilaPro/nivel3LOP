//Enunciado de la tarea 4 de la sección 2726
//
//Crear un algoritmo usando arreglos paralelos en base al siguiente enunciado: al final de una semana una tienda que tiene 5 
//sucursales cuenta con el total de ventas de cada una de ellas y necesita procesar esta información para cumplir con los siguientes objetivos
//			
//	1.- Mostrar el menor monto de ventas y el nombre de la sucursal que lo obtuvo
//			
//	2.- Mostrar el mayor monto de ventas y el nombre de la sucursal que lo obtuvo
//			
//	3.- Listar las sucursales cuyo montos de ventas sea mayor al promedio
//	
//	4.- Listar los montos de ventas ordenados de manera ascendente
//			
//	5.- Implementar la búsqueda del nombre de una sucursal de no encontrarlo mostrar un mensaje notificándolo
			
Funcion Venta<-Func_Leer_Ventas(ventas) 
	Repetir 
		Mostrar "Ingrese el total de " ventas " de la tienda" Sin Saltar
		Leer  Venta
	Hasta Que Venta>=0
FinFuncion

Subproceso Cargar_Arreglos(nombre por Referencia,ventas por Referencia)
	Para i=1 hasta 5
		Mostrar "Ingrese la información del " i "º tienda" 
		Mostrar "Ingrese el nombre" Sin Saltar
		Leer nombre[i]
		ventas[i]=Func_Leer_Ventas("ventas") 
	FinPara
FinSubProceso

Subproceso Acumular_Ventas(ventas,ventaAcum por referencia)
	ventaAcum=0
	Para i= 1 hasta 5 
		ventaAcum=ventaAcum+ventas[i]
	FinPara
FinSubProceso

Subproceso Promediar_Ventas(ventaAcum,ventaProm por referencia)
		ventaProm=ventaAcum/5
FinSubProceso

Subproceso Determinar_MayYMenVentas(ventas,mayVentas Por Referencia,menVentas Por Referencia)
	mayVentas=ventas[1]
	menVentas=ventas[1]
	Para i=2 hasta 5
		Si ventas[i]>mayVentas
			mayVentas=ventas[i]
		FinSi
		Si  ventas[i]<menVentas
			menVentas=ventas[i]
		FinSi	
	FinPara
FinSubProceso

Subproceso Listar_MenorVenta(nombre,ventas,menVentas)//Punto 1 del Desafio
	cant_tienda_menorventa=0
	Mostrar "Tienda(s) en obtener la(s) menor(es) venta(s): "
	Mostrar ""
	Para i=1 hasta 5
		Si ventas[i]=menVentas entonces
			cant_tienda_menorventa=cant_tienda_menorventa+1
			mostrar "El menor monto de ventas fue: " menVentas " BsS. Y lo obtuvo la tienda: (" nombre[i] ")"
			Mostrar ""
		FinSi
	FinPara
	Si cant_tienda_menorventa>1 entonces
		Mostrar cant_tienda_menorventa " tiendas tienen el mismo monto de ventas menor"
	FinSi
FinSubProceso

Subproceso Listar_MayorVenta(nombre,ventas,mayVentas)//Punto 2 del Desafio
	cant_tienda_mayorventa=0
	Mostrar "Tienda(s) en obtener la(s) mayor(es) venta(s): "
	Mostrar ""
	Para i=1 hasta 5
		Si ventas[i]=mayVentas entonces
			cant_tienda_mayorventa=cant_tienda_mayorventa+1
			mostrar "El mayor monto de ventas fue: " mayVentas " BsS. Y lo obtuvo la tienda: (" nombre[i] ")"
			Mostrar ""
		FinSi
	FinPara
	Si cant_tienda_mayorventa>1 entonces
		Mostrar cant_tienda_mayorventa " tiendas tienen el mismo monto de ventas mayor"
	FinSi
FinSubProceso

Subproceso Listar_tienda_Mayor_Promedio(nombre,ventas,ventaProm)//Punto 3 del Desafio
	cant_tienda_mayorprom=0
	Mostrar "Tienda(s) en obtener la(s) venta(s) superior(es) al promedio de ventas: "
	Mostrar ""
	Mostrar "El monto promedio de ventas fue: " ventaProm " BsS"
	Mostrar ""
	Para i=1 hasta 5
		Si ventas[i]>ventaProm entonces
			cant_tienda_mayorprom=cant_tienda_mayorprom+1
			mostrar " La tienda (" nombre[i] ") obtuvo un total de ventas de: " ventas[i] " BsS. Superior al promedio"
			Mostrar ""
		FinSi
	FinPara
	Si cant_tienda_mayorprom<1 entonces
		Mostrar "Ninguna tienda obtuvo ventas superiores al promedio de ventas entre ellas"
		Mostrar ""
	FinSi
FinSubProceso

Subproceso Ordenam_Ascendente(nombre,ventas)//Punto 4 de Desafio
	Para i=1 hasta 4
		Para j=1 hasta 4
			Si ventas[j]>ventas[j+1] entonces
				aux1=ventas[j]
				aux2=nombre[j]
				ventas[j]=ventas[j+1]
				nombre[j]=nombre[j+1]
				ventas[j+1]=aux1
				nombre[j+1]=aux2
			FinSi
		FinPara
	FinPara
	Mostrar "Se presentan a continuacion las tiendas en orden ascendente segun el total de ventas de cada una de ellas"
	Mostrar ""
	Para i=1 hasta 5
		Mostrar i ") Tienda: " nombre[i] ". Total de ventas: " ventas[i]
	FinPara
FinSubProceso	
	
Funcion Tienda_A_Buscar <- Func_Leer_TiendaABuscar
	Mostrar ""
	Mostrar "¿Nombre de la tienda que desea buscar? " Sin Saltar
	Leer Tienda_A_Buscar
FinFuncion

Subproceso Buscar_Tienda_Y_Posic(tienda_buscada,nombre,Tienda_Encontrada por Referencia,Posic_Hallazgo por Referencia)
	Tienda_Encontrada=falso
	i=1
	Repetir
		si nombre[i]=tienda_buscada
			Entonces 
			Tienda_Encontrada=Verdadero 
			Posic_Hallazgo=i
		sino
			i=i+1
		FinSi
	Hasta Que Tienda_Encontrada=Verdadero o i>5
FinSubproceso

Subproceso Mostrar_Result_Busq(Tienda_A_Buscar,Tienda_Encontrada,Posic,ventas)
	Si Tienda_Encontrada=Verdadero
		entonces 
		mostrar "La tienda buscada (" Tienda_A_Buscar ") fue encontrada en la posición " Posic
		Mostrar "Su total de ventas fue: " ventas[Posic] " BsS."
	sino mostrar "La tienda buscada (" Tienda_A_Buscar ") NO fue encontrada" 
	FinSi	
	Mostrar ""	
FinSubproceso

Subproceso BuscarTienda(nombre,ventas)//Punto 5 Desafio
	Mostrar "Desea buscar una tienda? S/N"
	Leer opc
	opc=Mayusculas(opc)
	Si opc="S" entonces
		opc2="S"
		Mientras opc2="S"
			Tienda_A_Buscar=Func_Leer_TiendaABuscar
			Buscar_Tienda_Y_Posic(Tienda_A_Buscar,nombre,Tienda_Encontrada,Posic_Hallazgo)
			Mostrar_Result_Busq(Tienda_A_Buscar,Tienda_Encontrada,Posic_Hallazgo,ventas)
			Mostrar "Desea buscar otra tienda? (S/N)"
			Leer opc2
			opc2=Mayusculas(opc2)
		FinMientras
	FinSi
FinSubProceso



Algoritmo Desafio4lop3
	Definir mayVentas, menVentas Como Real
	Dimension nombre[5]
	Dimension ventas[5]
	Cargar_Arreglos(nombre,ventas)
	Limpiar Pantalla
	Determinar_MayYMenVentas(ventas,mayVentas,menVentas)
	Acumular_Ventas(ventas,ventaAcum)
	Promediar_Ventas(ventaAcum,ventaProm)
	Listar_MenorVenta(nombre,ventas,menVentas)// Punto 1
	Listar_MayorVenta(nombre,ventas,mayVentas)//Punto 2
	Listar_tienda_Mayor_Promedio(nombre,ventas,ventaProm) //Punto 3
	Ordenam_Ascendente(nombre,ventas)//Punto 4
	BuscarTienda(nombre,ventas)//Punto5
	
FinAlgoritmo
