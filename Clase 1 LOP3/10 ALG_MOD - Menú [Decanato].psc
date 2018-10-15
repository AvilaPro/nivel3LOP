//  El Decanato de Investigación y Postgrado de una Universidad ofrece cursos en diversas áreas. 
// El costo del curso se cancela de la siguiente forma: Una inicial del 20% del costo del curso 
// y el resto debe ser cancelado en cuotas mensuales durante dos años.
// Si se tiene como dato de entrada: nombre de un participante, área del curso y costo del curso. 
//Se pide calcular e imprimir: nombre del participante, área del curso, monto inicial 
//y cuotas mensuales a cancelar por el participante.
			
Algoritmo Decanato
	Definir nombre, area_curso Como Caracter
	Definir cost_total, cuota_mens, mto_ini Como Real
	Definir opc_menu Como Entero
	
	Repetir
		Si opc_menu=1 o opc_menu=2  
			entonces 
				Limpiar Pantalla
				Mostrar "Ultima opción seleccionada: " opc_menu
		FinSi
		Si opc_menu=3
			entonces 
				Mostrar "Presione cualquier tecla para volver al menú"
				Esperar Tecla
				Limpiar Pantalla
		FinSi
		Mostrar "MENU DE OPCIONES"
		Mostrar "1. Ingresar datos"
		Mostrar "2. Realizar calculos"
		Mostrar "3. Mostrar resultados"
		Mostrar "4. Salir del sistema"
		Mostrar "Ingrese la opción... " Sin Saltar
		Leer opc_menu
		Segun opc_menu Hacer
			1: Leer_Datos(nombre,area_curso,cost_total)
			2: Realizar_calculos(cost_total,mto_ini,cuota_mens)
			3: Mostrar_resultados(nombre,area_curso,mto_ini,cuota_mens)
			4: Mostrar "Usted escogió salir del sistema."
			De Otro Modo:
				Mostrar "Debe ingresar una opción entre 1 y 4"
		FinSegun
	Hasta Que opc_menu=4
	
	
FinAlgoritmo

SubProceso Leer_Datos(nom Por Referencia,area Por Referencia,cost Por Referencia)
	Mostrar "¿Nombre del participante? " Sin Saltar
	Leer nom
	Mostrar "¿Area del curso? " Sin Saltar
	Leer area
	Mostrar "¿Costo del curso? " Sin Saltar
	Leer cost
FinSubProceso

SubProceso Realizar_calculos(cost_total,mto_ini Por Referencia,cuota_mens Por Referencia)
	mto_ini=cost_total*0.2
	cuota_mens=(cost_total-mto_ini)/24
	Mostrar "Realizando cálculos..."
	Esperar 3 segundos
FinSubProceso

SubProceso Mostrar_resultados(nom,area,mto_ini,cuotas)
	Mostrar ""
	Mostrar " --- SALIDAS ---"
	Mostrar "Nombre del participante: " nom
	Mostrar "Area del curso: " area
	Mostrar "Pago inicial: " mto_ini
	Mostrar "Cuota mensual: " cuotas
FinSubProceso
