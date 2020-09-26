SubAlgoritmo capturarNombre(n)
	Mostrar "Ingrese el nombre del empleado: " Sin Saltar 
	Leer n
FinSubAlgoritmo
SubProceso conocerCantidadyVenta(c, mv)
	Mostrar "Ingrese el numero de autos vendidos por este vendedor: " Sin Saltar
	Leer c
	Mostrar "Ingrese el monto de venta total de este vendedor: " Sin Saltar
	Leer mv
FinSubProceso
SubAlgoritmo calcularSueldo(nro, mtovent, s)
	s = 120000 + (nro * 300000) + (mtovent * 0.18)
FinSubAlgoritmo
SubProceso mostraResultados(name, pay)
	Mostrar "El sueldo total de " name " es " pay " Bs"
FinSubProceso

Algoritmo Prac_cap2_2_LOP3
	Definir nombre Como Caracter
	Definir nro_autos_vendidos Como Entero
	Definir montoVenta, sueldoTotal Como Real
	
	capturarNombre(nombre)
	conocerCantidadyVenta(nro_autos_vendidos, montoVenta)
	calcularSueldo(nro_autos_vendidos, montoVenta, sueldoTotal)
	mostraResultados(nombre, sueldoTotal)
FinAlgoritmo
