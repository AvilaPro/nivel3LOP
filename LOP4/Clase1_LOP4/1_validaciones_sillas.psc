Funcion numPos = Funcion_leerPos(mensaje)
	Limpiar Pantalla
	Repetir
		Mostrar mensaje
		Leer num
	Hasta Que (num>0)
	numPos=num
FinFuncion

Funcion var = Fun_leerVarenRango(mensaje, a, b, c, d, e)
	Limpiar Pantalla
	Repetir
		Mostrar mensaje a ", " b ", " c ", " d ", " e
		Leer opc
	Hasta Que (opc=a) O (opc=b) O (opc=c) O (opc=d) O (opc=e)
	var=opc
FinFuncion

Algoritmo sin_titulo
	Definir costo como entero
	
	
	ta="blanca"
	tb="con apoya brazos"
	tc="reclinada"
	td="la deforme"
	te="VIP"
	Mostrar "BIENVENIDO CLIENTE, A LA TIENDA DE SILLAS"
	num_sillas=Funcion_leerPos("Ingrese el numero de sillas a llevar, el valor debe ser mayor a 0")
	tipo_silla=Fun_leerVarenRango("Seleccione un tipo de silla entre los que tenemos disponibles: ", ta, tb, tc, td, te)
	Segun tipo_silla
		"blanca":costo=100
		"con apoya brazos": costo=200
		"reclinada": costo=300
		"la deforme":costo=400
		"VIP":costo=500
	FinSegun
	
	Subtotal=num_sillas*costo
	iva=Subtotal*0.16
	Total=Subtotal+iva
	
	Limpiar Pantalla
	Mostrar "Ud esta llevando silla del tipo: " tipo_silla
	Mostrar "Una cantidad de sillas: " num_sillas
	Mostrar "El costo de unitario de este tipo de silla es: " costo
	Mostrar "El subtotal a pagar es: " Subtotal
	Mostrar "El monto del IVA es: " iva
	Mostrar "El monto total a pagar es: " Total
	
	
	
FinAlgoritmo
