


SubAlgoritmo cargarPrecio(preciofabrica Por Referencia)
	Mostrar "Ingrese el precio de fabrica del producto: "
	Leer preciofabrica
FinSubAlgoritmo

//Funciones No Reusables
Funcion prebase <- Func_Calc_Precio_Base(preciofabrica)
	prebase = preciofabrica+(preciofabrica*0.25)
FinFuncion

Funcion comvendedor <- Func_Calc_Ganancia_Vendedor(preciofabrica)
	comvendedor = preciofabrica*0.2
FinFuncion

Funcion iva <- Func_Calc_Iva(prebase)
	iva = prebase*0.15
FinFuncion

//Funcion reusable
Funcion variable <- Func_Calc_Variable(dato1, dato2)
	variable = dato1*(dato2/100)
FinFuncion



Algoritmo sin_titulo
	Definir preciofabrica, prebase Como Real
	
	
FinAlgoritmo
