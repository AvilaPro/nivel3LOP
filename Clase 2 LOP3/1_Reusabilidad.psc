//SubProceso ingresarCantidadVendida(cantidadVenta Por Referencia)
//	Mostrar "Ingrese la cantidad de carros vendidos por el vendedor"
//	Leer cantidadVenta
//FinSubProceso
//
//SubProceso ingresarMontoTotalVentas(montoSubTotal Por Referencia)
//	Mostrar "Por favor ingrese el monto sub total de ventas del vendedor para poder calcular"
//	Mostrar "la comision por ventas del vendedor"
//	Leer montoSubTotal
//FinSubProceso

SubProceso cargarDatos(mensaje, dato Por Referencia)
	Mostrar mensaje
	Leer dato
FinSubProceso

Subproceso calcularComisionPorCantidad(cantidadVenta, comisionVenta Por Referencia)
	comisionVenta=(cantidadVenta*300000)
FinSubProceso

SubAlgoritmo calcularComisionPorcentual(montoSubTotal, comporc Por Referencia)
	comPorc=montoSubTotal*0.18
FinSubAlgoritmo

SubProceso conclusion(sueldoBase, comisionVenta, comporc, sueldototal Por Referencia)
	sueldototal=sueldoBase+comisionVenta+comPorc	
	Mostrar "El sueldo definitivo del vendedor es: " sueldototal
	Mostrar ""
	Mostrar "La comision por unidades vendidas es: " comisionVenta
	Mostrar ""
	Mostrar "La comision por el total vendido es: " comporc
FinSubProceso

Algoritmo modularidad4Parametros
	Definir sueldoBase, unidadesVendidas como Entero
	Definir totvent, comunid, comporc, sueldototal como Real
	Definir mensaje1, mensaje2 como Caracter
	
	mensaje1 = "Ingrese la cantidad de carros vendidos por el vendedor"
	mensaje2 = "Por favor ingrese el monto sub total de ventas del vendedor"
	
	sueldoBase=120000
	
	cargarDatos(mensaje1, unidadesVendidas)
	cargarDatos(mensaje2, totvent)
	
	calcularComisionPorCantidad(unidadesVendidas, comunid)
	calcularComisionPorcentual(totvent, comporc)
	
	conclusion(sueldoBase, comunid, comporc, sueldototal)
	
	
	
FinAlgoritmo
