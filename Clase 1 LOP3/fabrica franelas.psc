Funcion Precio<-Func_Precio(talla)
	Segun talla Hacer
		"S":
			Precio=2250
		"M":
			Precio=3000
		"L":
			Precio=4500
		"XL":
			Precio=5750
		De Otro Modo:
			Mostrar "Debe ingresar una talla correcta (S,M,L,XL)"
			Precio=0
	Fin Segun
FinFuncion


Algoritmo fabrica
	Definir talla Como Caracter
	Definir unidades Como Entero
	Definir Precio, Descuento, Precio_total, Subtotal Como Real
	Definir Desc como caracter
	
	Mostrar "Ingrese la talla de franela que desea comprar: " Sin Saltar
	Leer talla
	talla=Mayusculas(talla)
	Mostrar "Ingrese cantidad de unidades a comprar: " Sin Saltar
	Leer cantidad
	Si (cantidad>=6 y cantidad<=11) Entonces
		Descuento=(Func_Precio(talla)*cantidad)*0.05
		Desc="5%"
	Sino
		Si (cantidad>=12 y cantidad<=24) Entonces
			Descuento=(Func_Precio(talla)*cantidad)*0.1 //Tambien se puede llamar el resultado de la funcion con la variable
			Desc="10%"
		Sino
			Si cantidad>=24 Entonces
				Descuento=(Func_Precio(talla)*cantidad)*0.15
				Desc="15%"
			Sino
				Descuento=0
				Desc="0%"
			FinSi
		FinSi
	FinSi
	Precio_total=(Func_Precio(talla)*cantidad)-Descuento
	Subtotal=(Func_Precio(talla)*cantidad)
	Mostrar "La talla de franelas a compra es: " talla
	Mostrar "Cuyo precio unitario es: " Func_Precio(talla) 
	Mostrar "Y cuya cantidad a llevar es: " cantidad
	Mostrar "El subtotal a pagar es: " Subtotal
	Mostrar "El descuento a aplicar es: " Desc
	Mostrar "El total a pagar es : " Precio_total
	

FinAlgoritmo
