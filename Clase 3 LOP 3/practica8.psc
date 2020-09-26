//	ENUNCIADO:
//Determinar y mostrar la ganancia, la comision del vendedor, el precio antes
//del IVA, el monto a pagar por IVA y el precio de venta de un articulo

//Precio base es el 25%+ del precio de fabrica
//la ganancia es del 25%+  del precio de fabrica
//la comision del vendedor es del 20% del precio de fabrica
//IVA 16%

SubAlgoritmo solicitarDato(nombreVariable, pf Por Referencia)
	Mostrar "Ingrese el " nombreVariable Sin Saltar
	Leer pf
FinSubAlgoritmo
//Funciones no reusables
Funcion precioBase <- Func_Calc_PrecioBase(precioFabrica)
	precioBase = precioFabrica * 1.25
FinFuncion
Funcion ganancia <- Func_Calc_ganancia(precioFabrica)
	ganancia = precioFabrica * 0.25
FinFuncion
Funcion comision <- Func_Calc_comision(precioFabrica)
	comision = precioFabrica * 0.2
FinFuncion
Funcion iva <- Func_Calc_iva(precioFabrica)
	iva = precioFabrica * 0.16
FinFuncion

//Funcion Reusable
Funcion variable <- Func_Calc_variable(dato1, dato2)
	variable = dato1 * (dato2/100)
FinFuncion

Algoritmo prac_cap8_LOP3
	Definir precioFabrica, pb, precioBase, ganancia, comision, iva Como Real
	
	solicitarDato("precio de fabrica", precioFabrica)
	pb = Func_Calc_variable(precioFabrica, 25)
	precioBase = precioFabrica + pb
	ganancia = Func_Calc_variable(precioFabrica, 25)
	comision = Func_Calc_variable(precioFabrica, 20)
	iva = Func_Calc_variable(precioBase, 16)
	
	Mostrar "El precio base del producto es: " precioBase
	Mostrar "La ganancia que se obtendra es: " ganancia
	Mostrar "La comision del vendedor es: " comision
	Mostrar "El iva del producto es: " iva
	Mostrar ""
	Mostrar "El total a pagar es: " (precioBase + iva)
FinAlgoritmo









