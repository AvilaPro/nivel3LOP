SubProceso cargarDatos(mensaje, dato Por Referencia)
	Mostrar mensaje
	Leer dato
FinSubProceso

SubAlgoritmo calcularInicial(costo, inicial por Referencia)
	inicial = costo*0.2
	Mostrar "El costo de la inicial es: " inicial
FinSubAlgoritmo

SubAlgoritmo calcularCuotas(costo, cuotas por Referencia)
	cuotas = (costo*0.8)/24
	Mostrar "Las cuotas mensuales seran: " cuotas
FinSubAlgoritmo

SubAlgoritmo indicarTodo(nombre, area, costo, inicial, cuotas)
	Limpiar Pantalla
	Mostrar "El estudiante " nombre
	Mostrar "Del area " area
	Mostrar "El curso tendra un costo total de: " costo " Bs"
	calcularInicial(costo, inicial)
	calcularCuotas(costo, cuotas)
	Mostrar "Para ir al menu presione una tecla"
	Esperar Tecla
FinSubAlgoritmo

Algoritmo Decanato
	Definir mensaje1, mensaje2, mensaje3, nombre, area Como Caracter
	Definir costo, inicial, cuotas Como Real
	mensaje1="Ingresa nombre del estudiante: " 
	mensaje2="Ingresa el area del curso: "
	mensaje3="Ingresa el costo total del curso: "
	Repetir
		Mostrar "MENU"
		Mostrar "Seleccione una de las opciones enlistadas:"
		Mostrar "1: Para cargar los datos (nombre, area del curso y costo)"
		Mostrar "2: Mostrar costo de la inicial del curso"
		Mostrar "3: Mostrar costo de las cuotas del curso"
		Mostrar "4: Mostrar toda la informacion del curso"
		Mostrar "5: SALIR"
		Leer opc_menu
		Segun opc_menu
			1: cargarDatos(mensaje1, nombre)
				cargarDatos(mensaje2, area)
				cargarDatos(mensaje3, costo)
			2: calcularInicial(costo, inicial)
				Mostrar "Para ir al menu presione una tecla"
				Esperar Tecla
				Limpiar Pantalla
			3: calcularCuotas(costo, cuotas)
				Mostrar "Para ir al menu presione una tecla"
				Esperar Tecla
				Limpiar Pantalla
			4: indicarTodo(nombre, area, costo, inicial, cuotas)
				Limpiar Pantalla
			5: Mostrar "Ha seleccionado salir, hasta pronto!!!"
			De Otro Modo:
				Mostrar "Debe seleccionar una opcion valida del menu"
				Esperar 2 Segundos
				Limpiar Pantalla
		FinSegun
	Hasta Que opc_menu=5
FinAlgoritmo
