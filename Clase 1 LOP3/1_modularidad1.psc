SubProceso capturarNombre()
	Mostrar "Por favor, identificate"
	Leer nombre
FinSubProceso

SubProceso capturarNotas()
	Mostrar " A continuacion, por favor, ingrese sus notas"
	Mostrar ""
	Mostrar "Ingrese la 1º nota"
	Leer nota1
	Mostrar "Ingrese la 2º nota"
	Leer nota2
	Mostrar "Ingrese la 3º nota"
	Leer nota3
FinSubProceso

SubAlgoritmo calcularPromedio()
	promedio=(nota1+nota2+nota3)/3
FinSubAlgoritmo

SubProceso mostrarResultados()
	Limpiar Pantalla
	Mostrar "Hola " nombre
	Mostrar "El promedio de tus notas es: " promedio
FinSubProceso

SubAlgoritmo despedida()
	Mostrar ""
	Mostrar "Hasta luego " nombre
FinSubAlgoritmo
Algoritmo sin_titulo
	Definir nombre Como Caracter
	Definir nota1, nota2, nota3, promedio como Real
	
	capturarNombre()
	capturarNotas()
	calcularPromedio()
	mostrarResultados()
	despedida()
	
	
FinAlgoritmo
