SubProceso capturarNombre(nombre)
	Mostrar "Por favor, identificate"
	Leer nombre
FinSubProceso

SubProceso capturarNotas(nota1, nota2, nota3, promedio)
	Mostrar " A continuacion, por favor, ingrese sus notas"
	Mostrar ""
	Mostrar "Ingrese la 1� nota"
	Leer nota1
	Mostrar "Ingrese la 2� nota"
	Leer nota2
	Mostrar "Ingrese la 3� nota"
	Leer nota3
FinSubProceso

SubAlgoritmo calcularPromedio(promedio, nota1, nota2, nota3)
	promedio=(nota1+nota2+nota3)/3
FinSubAlgoritmo

SubProceso mostrarResultados(nombre, promedio)
	Limpiar Pantalla
	Mostrar "Hola " nombre
	Mostrar "El promedio de tus notas es: " promedio
FinSubProceso

SubAlgoritmo despedida(nombre)
	Mostrar ""
	Mostrar "Hasta luego " nombre
FinSubAlgoritmo

Algoritmo modularidad2
	Definir name Como Caracter
	Definir nota1, nota2, nota3, promedio como Real
	
	capturarNombre(name)
	capturarNotas(nota1, nota2, nota3, promedio)
	calcularPromedio(promedio, nota1, nota2, nota3)
	mostrarResultados(name, promedio)
	despedida(name)
	
	
FinAlgoritmo
