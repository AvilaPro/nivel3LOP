SubAlgoritmo  capturarNombre(n Por Referencia)
	Mostrar "Ingrese el nombre del empleado" Sin Saltar
	Leer n
FinSubAlgoritmo
//SubProceso conocerCantidadyVenta(c Por Referencia, mv Por Referencia)
//	Mostrar "Ingrese el numnero de autos vendidos por este vendedor: " Sin Saltar
//	Leer c
//	Mostrar "Ingrese el monto de venta total de este vendedor: " Sin Saltar
//	Leer mv
//FinSubProceso
SubAlgoritmo calcularSueldo( s Por Referencia)
	Definir c como entero
	Definir mv como Real
	Mostrar "Ingrese el numnero de autos vendidos por este vendedor: " Sin Saltar
	Leer c
	Mostrar "Ingrese el monto de venta total de este vendedor: " Sin Saltar
	Leer mv
	s = 120000 + (c * 300000) + (mv * 0.18)
FinSubAlgoritmo
SubAlgoritmo mostrarResultados(name, pay)
	Mostrar "El sueldo total de " name " es " pay " Bs"
FinSubAlgoritmo

Algoritmo Prac_cap2_2_LOP3
	Definir nombre Como Caracter
	Definir nro_autos_vendidos Como Entero
	Definir montoVentas, sueldoTotal, sueldoTotal1 Como Real
	
	capturarNombre(nombre)
	//conocerCantidadyVenta(nro_autos_vendidos, montoVenta)
	calcularSueldo(sueldoTotal)
	mostrarResultados(nombre, sueldoTotal)

	
FinAlgoritmo
