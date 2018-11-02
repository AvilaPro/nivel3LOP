
Funcion Cad_Formateada<-Func_LeerCad_Format(Mensaje)
	mostrar Mensaje Sin Saltar
	Leer cade
	Cad_Formateada=Mayusculas(Subcadena(cade,1,1))+Minusculas(Subcadena(cade,2,Longitud(cade)))
FinFuncion

Funcion Cad_Numeros<-Func_LeerCostos(Mensaje)
	mostrar Mensaje Sin Saltar
	Leer costo
	Cad_Numeros=costo
FinFuncion

Funcion Num<-Func_Leer_NumEnRango(Mensaje,Tipo_Num,ValMin,ValMax)
	Repetir
		Mostrar Mensaje Sin Saltar
		Leer Num
		Si Tipo_Num=0 // Entero
			entonces Num=Trunc(Num)
		FinSi	
	Hasta Que Num>=ValMin y Num<=ValMax
FinFuncion

Subproceso Cargar_datos_facturacion(Servicio,Nombre Por Referencia, Num_Servicios Por Referencia, Subtotal Por Referencia, Impuesto Por Referencia, Total Por Referencia, Total_facturar Por Referencia)
	Para i=1 hasta 5
		Serv=0
		Mostrar "Ingrese los datos de la " i "º persona"
		Nombre[i]=Func_LeerCad_Format("Nombre: ")
		Serv=Func_Leer_NumEnRango("Ingrese la cantidad de servicios prestados a este cliente",0,1,100)
		Num_Servicios[i]=Serv
		Para j=1 hasta Serv
			Mostrar "Ingrese los costos del" j "º servicio"
			Servicio[j]=Func_LeerCostos("Costo: ")
			Subtotal[i]=Subtotal[i]+Servicio[j]
		FinPara
		Impuesto[i]=Subtotal[i]*0.16
		Total[i]=Subtotal[i]+Impuesto[i]
		Total_facturar=Total_facturar+Total[i]
		Mostrar ""
	FinPara
FinSubProceso

Subproceso Mostrar_Resultados(Nombre,Num_Servicios,Subtotal,Impuesto,Total,Total_facturar)
	Limpiar Pantalla
	Para i=1 hasta 5
		Mostrar "Al cliente " Nombre[i] " se le hicieron " Num_Servicios[i] " servicios."
		Mostrar "El monto total a cobrar libre de impuestos (Subtotal) es: " Subtotal[i] " BsS"
		Mostrar "El monto de total de IVA (16%) a cobrar es: " Impuesto[i] " BsS"
		Mostrar "El monto a cobrar con impuesto (Subtotal + Iva) es: " Total[i] " BsS"
		Mostrar ""
		Mostrar "El total a facturar en este periodo de facturacion es: " Total_facturar " BsS"
		
	FinPara
	FinSubProceso


Algoritmo Desafio3lop3
	
	Dimension Nombre[5]
	Dimension Num_Servicios[5]
	Dimension Subtotal[5]
	Dimension Impuesto[5]
	Dimension Total[5]
	Dimension Servicio[100]
	
	Cargar_datos_facturacion(Servicio,Nombre,Num_Servicios,Subtotal,Impuesto,Total,Total_facturar)
	Mostrar_Resultados(Nombre,Num_Servicios,Subtotal,Impuesto,Total,Total_facturar)
	
FinAlgoritmo
