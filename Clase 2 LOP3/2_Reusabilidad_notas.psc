//SubProceso capturarNombre(nombre Por Referencia)
//	Mostrar "Por favor, identificate"
//	Leer nombre
//FinSubProceso

//SubProceso capturarNotas(nota1 Por Referencia , nota2 Por Referencia , nota3 Por Referencia)
//	Mostrar " A continuacion, por favor, ingrese sus notas"
//	Mostrar ""
//	Mostrar "Ingrese la 1º nota"
//	Leer nota1
//	Mostrar "Ingrese la 2º nota"
//	Leer nota2
//	Mostrar "Ingrese la 3º nota"
//	Leer nota3
//
SubProceso cargarDatos(mensaje, dato Por Referencia)
Mostrar mensaje
Leer dato
FinSubProceso
//
SubAlgoritmo cargarDatosArreglo(mensaje, tamano, arreglo Por Referencia)
Para i=1 hasta tamano
Mostrar mensaje i "º"
Leer arreglo[i]
FinPara
FinSubAlgoritmo
//
SubAlgoritmo recorrerArregloYacumular(tamano, arreglo, acumulada Por Referencia)
Para i=1 hasta tamano
acumulada=acumulada+arreglo[i]
FinPara
FinSubAlgoritmo
//
SubAlgoritmo mostrarResultados2(mensaje1, var1, mensaje2, var2)
Mostrar mensaje1 var1
Mostrar mensaje2 var2
FinSubAlgoritmo

SubAlgoritmo calcularPromedio(promedio Por Referencia , nota1, nota2, nota3)
promedio=(nota1+nota2+nota3)/3
FinSubAlgoritmo

//SubProceso mostrarResultados(nombre, promedio)
//	Limpiar Pantalla
//	Mostrar "Hola " nombre
//	Mostrar "El promedio de tus notas es: " promedio
//FinSubProceso

//SubAlgoritmo despedida(nombre)
//	Mostrar ""
//	Mostrar "Hasta luego " nombre
//FinSubAlgoritmo

Algoritmo modularidad2
	Definir name, mensaje1, mensaje2, mensaje3, mensaje4  Como Caracter;
	Definir promedio como Real;
	Definir a como Entero;
	a=3;
	Dimension notas[a];
	
	mensaje1= "Ingrese el nombre del estudiante";
	mensaje2= "Ingrese la nota ";
	mensaje3= "Hola ";
	Mensaje4= "Tus notas promedio fueron: ";
	
	cargarDatos(mensaje1, name);
	cargarDatosArreglo(mensaje2, a, notas);
	recorrerArregloYacumular(a, notas, promedio);
	
	promedio=promedio/3;
	
	mostrarResultados2(mensaje3, name, mensaje4, promedio)
	
	
	
FinAlgoritmo
